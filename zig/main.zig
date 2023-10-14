const std = @import("std");
var allocator = std.heap.c_allocator;
const Post = struct { _id: []const u8, title: []const u8, tags: [][]const u8 };
const Posts = []Post;
const TopPosts = struct { _id: *const []const u8, tags: *const [][]const u8, related: []*Post };
const stdout = std.io.getStdOut().writer();

inline fn top5(related: []*Post, score: []u8, ps: []Post) void {
    var top_5 = [5]u8{ 0, 0, 0, 0, 0 };
    var min_tags: u8 = 0;

    for (score, 0..) |count, j| {
        if (count > min_tags) {

            // Find the position to insert
            var pos: i8 = 3;
            while (pos >= 0 and count > top_5[@intCast(pos)]) : (pos -= 1) {
                top_5[@intCast(pos + 1)] = top_5[@intCast(pos)];
                related[@intCast(pos + 1)] = related[@intCast(pos)];
            }

            top_5[@intCast(pos + 1)] = count;
            related[@intCast(pos + 1)] = &ps[j];
            min_tags = top_5[4];
        }
    }
}

pub fn main() !void {
    const file = try std.fs.cwd().openFile("../posts.json", .{});
    defer file.close();
    const ArrPosts = std.ArrayList(usize);
    var map = std.StringHashMap(ArrPosts).init(allocator);
    defer map.deinit();
    var json_reader = std.json.reader(allocator, file.reader());
    defer json_reader.deinit();
    const parsed = try std.json.parseFromTokenSource(Posts, allocator, &json_reader, .{});
    defer parsed.deinit();

    const start = try std.time.Instant.now();

    for (parsed.value, 0..) |post_ele, i| {
        for (post_ele.tags) |tag| {
            var get_or_put = try map.getOrPut(tag);
            if (get_or_put.found_existing) {
                try get_or_put.value_ptr.*.append(i);
            } else {
                var temp = ArrPosts.init(allocator);
                try temp.append(i);
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

        var related: []*Post = rl[post_index * 5 .. post_index * 5 + 5];
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
