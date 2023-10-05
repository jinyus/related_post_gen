package related_post_gen;

import com.dslplatform.json.CompiledJson;
import com.dslplatform.json.DslJson;
import com.dslplatform.json.JsonAttribute;
import org.eclipse.collections.impl.list.mutable.primitive.IntArrayList;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

public class App {
    @CompiledJson
    record Post(@JsonAttribute(name = "_id") String id,
                String title,
                List<String> tags) {
    }

    record PostWithSharedTags(int post, int sharedTags) {
    }

    @CompiledJson
    record RelatedPosts(@JsonAttribute(name = "_id") String id,
                        List<String> tags,
                        List<Post> related) {
    }

    public static void main(String[] args) throws IOException {
        mainFunc("../posts.json", "../related_posts_java.json");
    }

    public static void mainFunc(String inputFile, String outputFile) throws IOException {
        long mainStart = System.nanoTime();

        DslJson<Object> dslJson = new DslJson<>();

        Post[] posts;
        try (InputStream in = Files.newInputStream(Paths.get(inputFile))) {
            posts = Objects.requireNonNull(dslJson.deserialize(Post[].class, in));
        }

        long start = System.nanoTime();

        Map<String, IntArrayList> tagMap = new HashMap<>();
        for (int i = 0; i < posts.length; i++) {
            for (String tag : posts[i].tags()) {
                tagMap.computeIfAbsent(tag, k -> new IntArrayList()).add(i);
            }
        }

        var allRelatedPosts = new RelatedPosts[posts.length];
        var taggedPostCount = new int[posts.length];

        var top5 = new PostWithSharedTags[5];

        for (int i = 0; i < posts.length; i++) {
            Post post = posts[i];

            // optimized to a memset
            Arrays.fill(taggedPostCount, 0);

            for (String tag : post.tags()) {
                tagMap.get(tag).forEach(otherPostIdx -> taggedPostCount[otherPostIdx]++);
            }

            taggedPostCount[i] = 0; // Don't count self

            for (int j = 0; j < top5.length; j++) {
                top5[j] = new PostWithSharedTags(0, 0);
            }
            int minTags = 0; // Updated initialization

            for (int j = 0; j < taggedPostCount.length; j++) {
                int count = taggedPostCount[j];

                if (count > minTags) {
                    // Find the position to insert
                    int pos = 4;
                    while (pos >= 0 && top5[pos].sharedTags < count) {
                        pos--;
                    }
                    pos++;

                    // Shift and insert
                    if (pos < 4) {
                        System.arraycopy(top5, pos, top5, pos + 1, 4 - pos);
                    }
                    if (pos <= 4) {
                        top5[pos] = new PostWithSharedTags(j, count);
                        minTags = top5[4].sharedTags;
                    }
                }
            }

            // Convert indexes back to Post pointers
            List<Post> topPosts = new ArrayList<>(5);
            for (PostWithSharedTags t : top5) {
                if (t.sharedTags > 0) {
                    topPosts.add(posts[t.post]);
                }
            }

            allRelatedPosts[i] = new RelatedPosts(post.id(), post.tags(), topPosts);
        }

        long end = System.nanoTime();

        System.out.println("Processing time (w/o IO): " + TimeUnit.NANOSECONDS.toMillis(end - start) + " ms");

        try (OutputStream out = Files.newOutputStream(Paths.get(outputFile))) {
            dslJson.serialize(allRelatedPosts, out);
        }
    }
}
