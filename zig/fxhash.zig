const std = @import("std");

const Hasher = struct {
    const SEEDS: usize = if (@typeInfo(usize).Int.bits == 32) 0x9e3779b9 else 0x517cc1b727220a95;
    hash: usize,

    fn hash(key: []const u8) u64 {
        var hasher = Hasher{ .hash = 0 };
        hasher.write(key);
        return hasher.finish();
    }

    fn write(self: *Hasher, bytes: []const u8) void {
        const bytesAsValue = std.mem.bytesAsValue;
        const BYTES_OF_USIZE: usize = if (@typeInfo(usize).Int.bits == 32) 4 else 8;
        var b = bytes;
        while (b.len > BYTES_OF_USIZE) {
            self.writeInt(usize, bytesAsValue(usize, b[0..BYTES_OF_USIZE]).*);
            b = b[BYTES_OF_USIZE..];
        }
        if (b.len >= 4) {
            self.writeInt(u32, bytesAsValue(u32, b[0..4]).*);
            b = b[4..];
        }
        if (b.len >= 2) {
            self.writeInt(u16, bytesAsValue(u16, b[0..2]).*);
            b = b[2..];
        }
        if (b.len >= 1) {
            self.writeInt(u8, bytesAsValue(u8, b[0..1]).*);
            b = b[1..];
        }
    }

    fn writeInt(self: *Hasher, comptime T: type, i: T) void {
        if (@typeInfo(T).Int.bits == 64 and @typeInfo(usize).Int.bits == 32) {
            self.add(@truncate(i));
            self.add(@truncate(i >> 32));
        } else {
            self.add(@as(usize, i));
        }
    }

    fn add(self: *Hasher, i: usize) void {
        self.hash = rotateLeft(usize, self.hash, 5) ^ i *% SEEDS;
    }

    fn rotateLeft(comptime T: type, n: T, rotate: usize) T {
        const bits = @typeInfo(T).Int.bits;
        return n << @truncate(rotate) | n >> @truncate(bits - rotate);
    }

    fn finish(self: *Hasher) u64 {
        return @as(u64, self.hash);
    }
};

pub const StringContext = struct {
    pub fn hash(self: @This(), s: []const u8) u64 {
        _ = self;
        return Hasher.hash(s);
    }
    pub fn eql(self: @This(), a: []const u8, b: []const u8) bool {
        _ = self;
        return std.mem.eql(u8, a, b);
    }
};

pub fn StringHashMap(comptime V: type) type {
    return std.HashMap([]const u8, V, StringContext, 80);
}

const expect = std.testing.expect;
test "basic" {
    var map = StringHashMap(i32).init(std.testing.allocator);
    defer map.deinit();

    try expect(!map.contains("foo"));
    try map.put("foo", 1);
    try map.put("bar", 2);
    try expect(map.get("foo") == 1);
    try expect(map.get("bar") == 2);
    try expect(map.count() == 2);
}
