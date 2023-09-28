const std = @import("std");

var gen_alloc = std.heap.GeneralPurposeAllocator(.{}){};
const post = struct { _id: []const u8, title: []const u8, tags: [][]const u8 };
const posts = []post;
// const ana_type = struct { *const post, usize };
fn lessthan(context: void, lhs: u16, rhs: u16) bool {
    _ = context;
    return lhs < rhs;
}

pub fn main() !void {
    const file = try std.fs.cwd().openFile("./posts.json", .{});
    defer file.close();
    const allocator = gen_alloc.allocator();
    var map = std.StringHashMap([]u16).init(allocator);
    const arr_posts = std.ArrayList(u16);
    defer map.deinit();
    var json_reader = std.json.reader(allocator, file.reader());
    defer json_reader.deinit();
    const parsed = try std.json.parseFromTokenSource(posts, allocator, &json_reader, .{});
    defer parsed.deinit();

    for (parsed.value, 0..) |post_ele, i| {
        var arr = arr_posts.init(allocator);
        for (post_ele.tags) |tag| {
            var g_p = try map.getOrPut(tag);
            if (g_p.found_existing) {
                var temp_arr = arr_posts.fromOwnedSlice(allocator, g_p.value_ptr.*);
                try temp_arr.append(@truncate(i));
                g_p.value_ptr.* = try temp_arr.toOwnedSlice();
            } else {
                g_p.value_ptr.* = try arr.toOwnedSlice();
            }
        }
    }

    for (parsed.value) |post_ele| {
        var top_5: [5]usize = undefined;
        var rel_posts_tags: [5000]u16 = [_]u16{0} ** 5000;
        for (post_ele.tags) |tag| {
            const tag_posts = map.getPtr(tag).?;
            for (tag_posts.*) |post_loc| {
                rel_posts_tags[post_loc] += 1;
            }
        }
        var n: usize = 5;
        while (n > 0) : (n -= 1) {
            const index = std.sort.argMax(u16, &rel_posts_tags, {}, lessthan).?;
            top_5[5 - n] = index;
            rel_posts_tags[index] = 0;
        }
        // std.debug.print("{any}", .{top_5});

    }
}
