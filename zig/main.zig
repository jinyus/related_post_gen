const std = @import("std");
var allocator = std.heap.c_allocator;
const Post = struct { _id: []const u8, title: []const u8, tags: [][]const u8 };
const Posts = []Post;
const TopPosts = struct { _id: *const []const u8, tags: *const [][]const u8, related: []*Post };
const stdout = std.io.getStdOut().writer();
const fxhash = @import("fxhash.zig");

inline fn is_top(m: u8, score: []const u8) u8 {
    var x: u8 = 0;
    for (score) |s| {
        x |= @intFromBool(s > m);
    }
    return x;
}

inline fn get_top(b: usize, related: []*Post, score: []const u8, ps: []Post, min: *u8, t5: []u8) void {
    for (score, b..) |s, i| {
        if (s > min.*) {
            var u: i8 = 3;
            while (u >= 0 and s > t5[@intCast(u)]) : (u -= 1) {
                t5[@intCast(u + 1)] = t5[@intCast(u)];
                related[@intCast(u + 1)] = related[@intCast(u)];
            }
            t5[@intCast(u + 1)] = s;
            related[@intCast(u + 1)] = &ps[i];
            min.* = t5[4];
        }
    }
}

inline fn top5(related: []*Post, score: []u8, ps: []Post) void {
    var top_5 = [5]u8{ 0, 0, 0, 0, 0 };
    var min_tags: u8 = 0;

    var b: usize = 0;
    const cache_line: usize = 64;
    while (b < score.len) : (b += cache_line) {
        const e = @min(b + cache_line, score.len);
        const chunk = score[b..e];
        if (is_top(min_tags, chunk) > 0) {
            get_top(b, related, chunk, ps, &min_tags, top_5[0..]);
        }
    }
}

pub fn main() !void {
    const file = try std.fs.cwd().openFile("../posts.json", .{});
    defer file.close();
    var json_reader = std.json.reader(allocator, file.reader());
    defer json_reader.deinit();
    const parsed = try std.json.parseFromTokenSource(Posts, allocator, &json_reader, .{});
    defer parsed.deinit();

    const start = try std.time.Instant.now();

    const ArrPosts = std.ArrayList(u32);
    var map = fxhash.StringHashMap(ArrPosts).init(allocator);
    defer map.deinit();

    for (parsed.value, 0..) |post_ele, i| {
        for (post_ele.tags) |tag| {
            const get_or_put = try map.getOrPut(tag);
            if (get_or_put.found_existing) {
                try get_or_put.value_ptr.*.append(@intCast(i));
            } else {
                var temp = ArrPosts.init(allocator);
                try temp.append(@intCast(i));
                get_or_put.value_ptr.* = temp;
            }
        }
    }

    var op = try std.ArrayList(TopPosts).initCapacity(allocator, parsed.value.len);
    op.expandToCapacity();
    defer op.deinit();

    var rl: []*Post = try allocator.alloc(*Post, parsed.value.len * 5);
    defer allocator.free(rl);

    var tagged_post_count: []u8 = try allocator.alloc(u8, parsed.value.len);
    defer allocator.free(tagged_post_count);

    for (0..parsed.value.len) |post_index| {
        // reset tagged_post_count
        @memset(tagged_post_count, 0);

        for (parsed.value[post_index].tags) |tag| {
            for (map.get(tag).?.items) |i_t| {
                tagged_post_count[i_t] += 1;
            }
        }

        tagged_post_count[post_index] = 0; // Don't count self

        const related: []*Post = rl[post_index * 5 .. post_index * 5 + 5];
        top5(related, tagged_post_count, parsed.value);
        op.items[post_index] = .{ ._id = &parsed.value[post_index]._id, .tags = &parsed.value[post_index].tags, .related = related };
    }
    const end = try std.time.Instant.now();
    try stdout.print("Processing time (w/o IO): {d}ms\n", .{@divFloor(end.since(start), std.time.ns_per_ms)});

    const op_file = try std.fs.cwd().createFile("../related_posts_zig.json", .{});
    defer op_file.close();
    var buffered_writer = std.io.bufferedWriter(op_file.writer());
    try std.json.stringify(try op.toOwnedSlice(), .{}, buffered_writer.writer());
    try buffered_writer.flush();
}
