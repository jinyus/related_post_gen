const std = @import("std");
const json = std.json;
const ArrayList = std.ArrayList;
const Thread = std.Thread;
const fxhash = @import("./fxhash.zig");

const TopN = 5;
const PostIdx = u32;
const SharedCount = u8;

const Post = struct {
    _id: []const u8,
    title: []const u8,
    tags: [][]const u8,
};

const RelatedPosts = struct {
    _id: []const u8,
    tags: [][]const u8,
    related: [TopN]?Post,
};

pub fn main() !void {
    var threaded: std.Io.Threaded = .init(std.heap.page_allocator, .{});
    defer threaded.deinit();
    const io = threaded.io();

    const allocator = std.heap.smp_allocator;

    const posts_json = try std.Io.Dir.cwd().readFileAlloc(io, "../posts.json", allocator, .unlimited);
    var posts = try json.parseFromSlice([]Post, allocator, posts_json, .{});
    defer posts.deinit();

    const cpu_count = try std.Thread.getCpuCount();
    const worker_count: usize = if (cpu_count > 1) cpu_count - 1 else 1;

    const start_time = std.Io.Clock.awake.now(io);
    const related_posts = try genRelatedPosts(allocator, posts.value, worker_count);
    const duration = start_time.durationTo(std.Io.Clock.awake.now(io));

    std.debug.print("Processing time (w/o IO): {d:.3}ms\n", .{@as(f64, @floatFromInt(duration.nanoseconds)) / 1_000_000.0});

    const file = try std.Io.Dir.cwd().createFile(io, "../related_posts_zig_con.json", .{});
    defer file.close(io);

    var buf: [4096]u8 = undefined;
    var writer = file.writer(io, &buf);
    try json.Stringify.value(related_posts, .{}, &writer.interface);
    try writer.interface.flush();
}

fn genRelatedPosts(
    allocator: std.mem.Allocator,
    posts: []const Post,
    worker_count: usize,
) ![]RelatedPosts {
    const Chunk = @Vector(64, SharedCount);
    const SharedCountAndIndex = struct {
        count: SharedCount,
        related_post_index: PostIdx,
    };

    const post_count = posts.len;
    const related_posts = try allocator.alloc(RelatedPosts, post_count);

    var tag_to_post_idxs = fxhash.StringHashMap(ArrayList(usize)).init(allocator);
    defer {
        var it = tag_to_post_idxs.iterator();
        while (it.next()) |entry| {
            entry.value_ptr.deinit(allocator);
        }
        tag_to_post_idxs.deinit();
    }

    for (posts, 0..) |post, post_idx| {
        for (post.tags) |tag| {
            var entry = try tag_to_post_idxs.getOrPut(tag);
            if (!entry.found_existing) {
                entry.value_ptr.* = ArrayList(usize).empty;
            }
            try entry.value_ptr.append(allocator, post_idx);
        }
    }

    const WorkContext = struct {
        posts: []const Post,
        related_posts: []RelatedPosts,
        tag_to_post_idxs: *fxhash.StringHashMap(ArrayList(usize)),
        allocator: std.mem.Allocator,
    };

    var context = WorkContext{
        .posts = posts,
        .related_posts = related_posts,
        .tag_to_post_idxs = &tag_to_post_idxs,
        .allocator = allocator,
    };

    const countdown = @as(isize, @intCast(posts.len));
    const CountdownAtomic = std.atomic.Value(isize);
    var atomic_countdown = CountdownAtomic.init(countdown);

    const worker = struct {
        fn work(ctx: *WorkContext, atomic_cd: *CountdownAtomic) void {
            var post_idx = atomic_cd.fetchSub(1, .monotonic) - 1;
            if (post_idx < 0) return;

            const chunks = ctx.allocator.alloc(Chunk, (ctx.posts.len + 63) / 64) catch return;
            defer ctx.allocator.free(chunks);
            @memset(chunks, @splat(0));
            var counts = @as([*]SharedCount, @ptrCast(chunks.ptr))[0..ctx.posts.len];

            while (post_idx >= 0) : (post_idx = atomic_cd.fetchSub(1, .monotonic) - 1) {
                const post = &ctx.posts[@intCast(post_idx)];

                for (post.tags) |tag| {
                    if (ctx.tag_to_post_idxs.get(tag)) |post_idxs| {
                        for (post_idxs.items) |idx| {
                            counts[idx] += 1;
                        }
                    }
                }
                counts[@intCast(post_idx)] = 0;

                const seed = SharedCountAndIndex{ .count = 0, .related_post_index = 0 };
                var topn: [TopN]SharedCountAndIndex = @splat(seed);
                var threshold: SharedCount = 0;
                var vthreshold: Chunk = @splat(0);

                for (chunks, 0..) |chunk, chunk_idx| {
                    const something_above_threshold = @reduce(.Or, chunk > vthreshold);
                    if (something_above_threshold) {
                        const base_idx = 64 * chunk_idx;
                        const remaining = ctx.posts.len - base_idx;
                        const sub_limit: usize = if (remaining < 64) remaining else 64;
                        const chunk_arr: [64]SharedCount = chunk;
                        for (0..sub_limit) |sub_idx| {
                            const count = chunk_arr[sub_idx];
                            if (count <= threshold) continue;
                            const newest = SharedCountAndIndex{ .count = count, .related_post_index = @intCast(base_idx + sub_idx) };
                            topn[TopN - 1] = newest;
                            var i: usize = TopN - 1;
                            while (i > 0) : (i -= 1) {
                                if (topn[i - 1].count >= newest.count) break;
                                topn[i] = topn[i - 1];
                                topn[i - 1] = newest;
                            }
                            threshold = topn[TopN - 1].count;
                        }
                        vthreshold = @splat(threshold);
                    }
                    chunks[chunk_idx] = @splat(0);
                }

                var rp = &ctx.related_posts[@intCast(post_idx)];
                rp._id = post._id;
                rp.tags = post.tags;
                for (topn, 0..) |top, rank| {
                    if (top.count > 0) {
                        rp.related[rank] = ctx.posts[top.related_post_index];
                    } else {
                        rp.related[rank] = null;
                    }
                }
            }
        }
    };

    const threads = try allocator.alloc(std.Thread, worker_count);
    defer allocator.free(threads);
    for (threads) |*t| {
        t.* = try std.Thread.spawn(.{}, worker.work, .{ &context, &atomic_countdown });
    }
    for (threads) |t| t.join();

    return related_posts;
}
