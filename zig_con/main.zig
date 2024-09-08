const std = @import("std");
const json = std.json;
const ArrayList = std.ArrayList;
const StringHashMap = std.StringHashMap;
const Thread = std.Thread;

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
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const allocator = arena.allocator();

    const posts_json = try std.fs.cwd().readFileAlloc(allocator, "../posts.json", std.math.maxInt(usize));
    var posts = try json.parseFromSlice([]Post, allocator, posts_json, .{});
    defer posts.deinit();

    const start_time = std.time.nanoTimestamp();
    const related_posts = try genRelatedPosts(allocator, posts.value);
    const duration = std.time.nanoTimestamp() - start_time;

    std.debug.print("Processing time (w/o IO): {d:.3}ms\n", .{@as(f64, @floatFromInt(duration)) / 1_000_000.0});

    var file = try std.fs.cwd().createFile("../related_posts_zig_con.json", .{});
    defer file.close();
    try json.stringify(related_posts, .{}, file.writer());
}

fn genRelatedPosts(allocator: std.mem.Allocator, posts: []const Post) ![]RelatedPosts {
    const Chunk = @Vector(64, SharedCount);
    const SharedCountAndIndex = struct {
        count: SharedCount,
        related_post_index: PostIdx,
    };

    const post_count = posts.len;
    const related_posts = try allocator.alloc(RelatedPosts, post_count);

    var tag_to_post_idxs = StringHashMap(ArrayList(usize)).init(allocator);
    defer {
        var it = tag_to_post_idxs.iterator();
        while (it.next()) |entry| {
            entry.value_ptr.deinit();
        }
        tag_to_post_idxs.deinit();
    }

    for (posts, 0..) |post, post_idx| {
        for (post.tags) |tag| {
            var entry = try tag_to_post_idxs.getOrPut(tag);
            if (!entry.found_existing) {
                entry.value_ptr.* = ArrayList(usize).init(allocator);
            }
            try entry.value_ptr.append(post_idx);
        }
    }

    var thread_pool: Thread.Pool = undefined;
    try thread_pool.init(.{ .allocator = allocator });
    defer thread_pool.deinit();

    const WorkContext = struct {
        posts: []const Post,
        related_posts: []RelatedPosts,
        tag_to_post_idxs: *StringHashMap(ArrayList(usize)),
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

                var topn = [_]SharedCountAndIndex{.{ .count = 0, .related_post_index = 0 }} ** TopN;
                var threshold: SharedCount = 0;
                var vthreshold: Chunk = @splat(0);

                for (chunks, 0..) |chunk, chunk_idx| {
                    const something_above_threshold = @reduce(.Or, chunk > vthreshold);
                    if (something_above_threshold) {
                        const base_idx = 64 * chunk_idx;
                        for (0..64) |sub_idx| {
                            const count = chunk[sub_idx];
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

    thread_pool.spawn(worker.work, .{ &context, &atomic_countdown }) catch |err| {
        std.debug.print("Error spawning thread: {}\n", .{err});
        return err;
    };

    return related_posts;
}
