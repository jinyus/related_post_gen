const std = @import("std");
var allocator = std.heap.c_allocator;
const post = struct { _id: []const u8, title: []const u8, tags: [][]const u8 };
const posts = []post;
const constop_posts = struct { _id: *const []const u8, tags: *const [][]const u8, related: []*post };
const stdout = std.io.getStdOut().writer();

fn lessthan(context: void, lhs: usize, rhs: usize) bool {
    _ = context;
    return lhs < rhs;
}

pub fn main() !void {
    const file = try std.fs.cwd().openFile("../posts.json", .{});
    defer file.close();
    const arr_posts = std.ArrayList(usize);
    var map = std.StringHashMap(arr_posts).init(allocator);
    defer map.deinit();
    var json_reader = std.json.reader(allocator, file.reader());
    defer json_reader.deinit();
    const parsed = try std.json.parseFromTokenSource(posts, allocator, &json_reader, .{});
    defer parsed.deinit();

    const start = try std.time.Instant.now();

    for (parsed.value, 0..) |post_ele, i| {
        for (post_ele.tags) |tag| {
            var g_p = try map.getOrPut(tag);
            if (g_p.found_existing) {
                try g_p.value_ptr.*.append(i);
            } else {
                var temp = arr_posts.init(allocator);
                try temp.append(i);
                g_p.value_ptr.* = temp;
            }
        }
    }
    var op = std.ArrayList(constop_posts).init(allocator);
    for (0..parsed.value.len) |post_index| {
        var top_5 = std.ArrayList(*post).init(allocator);
        var rel_posts_tags: [6000]usize = [_]usize{0} ** 6000;
        for (parsed.value[post_index].tags) |tag| {
            const tag_posts = map.getPtr(tag).?;
            for (0..tag_posts.*.items.len) |i_t| {
                if (tag_posts.*.items[i_t] != post_index) rel_posts_tags[tag_posts.*.items[i_t]] += 1;
            }
        }
        var n: usize = 5;
        while (n > 0) : (n -= 1) {
            const index = std.sort.argMax(usize, &rel_posts_tags, {}, lessthan).?;
            try top_5.append(&parsed.value[index]);
            rel_posts_tags[index] = 0;
        }

        try op.append(.{ ._id = &parsed.value[post_index]._id, .tags = &parsed.value[post_index].tags, .related = try top_5.toOwnedSlice() });
    }
    const end = try std.time.Instant.now();
    try stdout.print("Processing time (w/o IO): {d}ms\n", .{@divFloor(end.since(start), std.time.ns_per_ms)});

    const op_file = try std.fs.cwd().createFile("../related_posts_zig.json", .{});
    defer op_file.close();
    var buffered_writer = std.io.bufferedWriter(op_file.writer());
    const writer = buffered_writer.writer();
    try std.json.stringify(try op.toOwnedSlice(), .{}, writer);
    try buffered_writer.flush();
}
