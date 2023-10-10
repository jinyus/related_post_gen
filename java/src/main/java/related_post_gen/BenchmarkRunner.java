package related_post_gen;

import org.openjdk.jmh.annotations.*;
import org.openjdk.jmh.infra.Blackhole;

import java.io.IOException;

public class BenchmarkRunner {
    @Benchmark
    @BenchmarkMode(Mode.AverageTime)
    @Fork(value = 1, warmups = 0)
    @Warmup(iterations = 1, batchSize = 1, time = 3)
    @Measurement(iterations = 1, batchSize = 1, time = 3)
    public void init(Blackhole blackhole) throws IOException {
        App.main(new String[]{});
    }


    public static void main(String[] args) throws Exception {
        org.openjdk.jmh.Main.main(args);
    }
}
