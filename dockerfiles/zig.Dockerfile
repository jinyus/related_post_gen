# Zig 0.15.1: these sources use APIs from that era (std.fs.cwd,
# std.heap.smp_allocator). Newer Zig dropped std.fs.cwd and rejects the array
# repetition spacing in zig_con; older Zig predates smp_allocator.
RUN pacman -S --noconfirm --needed xz
RUN wget -q https://ziglang.org/download/0.15.1/zig-x86_64-linux-0.15.1.tar.xz -O /tmp/zig.tar.xz
RUN mkdir -p /opt/zig && tar -C /opt/zig --strip-components=1 -xf /tmp/zig.tar.xz && rm -f /tmp/zig.tar.xz
ENV PATH="/opt/zig:$PATH"
