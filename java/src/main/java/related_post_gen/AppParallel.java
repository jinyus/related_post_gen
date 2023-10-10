package related_post_gen;

import com.dslplatform.json.DslJson;
import org.eclipse.collections.impl.list.mutable.primitive.IntArrayList;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

public class AppParallel {
    public static void main(String[] args) throws IOException, InterruptedException {
        parallel("../posts.json", "../related_posts_java_con.json");
    }

    public static void parallel(String inputFile, String outputFile) throws IOException, InterruptedException {
        ForkJoinPool threadPool = ForkJoinPool.commonPool();
        int concurrency = threadPool.getParallelism();
        DslJson<Object> dslJson = new DslJson<>();

        App.Post[] posts;
        try (InputStream in = Files.newInputStream(Paths.get(inputFile))) {
            posts = Objects.requireNonNull(dslJson.deserialize(App.Post[].class, in));
        }

        long start = System.nanoTime();

        final int postsLength = posts.length;

        Map<String, IntArrayList> tagMap = HashMap.newHashMap(100);
        for (int i = 0; i < postsLength; i++) {
            for (String tag : posts[i].tags()) {
                tagMap.computeIfAbsent(tag, k -> new IntArrayList()).add(i);
            }
        }

        var allRelatedPosts = new App.RelatedPosts[postsLength];

        int[] allTaggedPostCount = new int[concurrency * postsLength];
        CountDownLatch waitGroup = new CountDownLatch(concurrency);
        for (int w = 0; w < concurrency; w++) {
            final int workerId = w;
            threadPool.execute(() -> {
                for (int i = workerId; i < postsLength; i += concurrency) {
                    allRelatedPosts[i] = computeRelatedPost(i, posts, tagMap, allTaggedPostCount, workerId * postsLength);
                }
                waitGroup.countDown();
            });
        }

        waitGroup.await();

        long end = System.nanoTime();

        System.out.println("Processing time (w/o IO): " + TimeUnit.NANOSECONDS.toMillis(end - start) + " ms");

        try (OutputStream out = Files.newOutputStream(Paths.get(outputFile))) {
            dslJson.serialize(allRelatedPosts, out);
        }
    }

    private static App.RelatedPosts computeRelatedPost(int i, App.Post[] posts, Map<String, IntArrayList> tagMap,
                                                       int[] taggedPostCount, int startPostCountIdx) {
        App.Post post = posts[i];

        // optimized to a memset
        Arrays.fill(taggedPostCount, startPostCountIdx, startPostCountIdx + posts.length, 0);

        for (String tag : post.tags()) {
            tagMap.get(tag).forEach(otherPostIdx -> taggedPostCount[startPostCountIdx + otherPostIdx]++);
        }

        taggedPostCount[startPostCountIdx + i] = 0; // Don't count self

        var top5 = new App.PostWithSharedTags[5];
        for (int j = 0; j < top5.length; j++) {
            top5[j] = new App.PostWithSharedTags(0, 0);
        }
        int minTags = 0; // Updated initialization

        for (int j = 0; j < posts.length; j++) {
            int count = taggedPostCount[startPostCountIdx + j];

            if (count > minTags) {
                // Find the position to insert
                int pos = 4;
                while (pos >= 0 && top5[pos].sharedTags() < count) {
                    pos--;
                }
                pos++;

                // Shift and insert
                if (pos < 4) {
                    System.arraycopy(top5, pos, top5, pos + 1, 4 - pos);
                }

                top5[pos] = new App.PostWithSharedTags(j, count);
                minTags = top5[4].sharedTags();
            }
        }

        // Convert indexes back to Post pointers
        App.Post[] topPosts = new App.Post[5];
        int index = 0;
        for (App.PostWithSharedTags t : top5) {
            topPosts[index++] = posts[t.post()];
        }

        return new App.RelatedPosts(post.id(), post.tags(), topPosts);
    }
}
