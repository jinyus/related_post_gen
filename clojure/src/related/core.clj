(ns related.core
  (:require [cheshire.core :as json]
            [clojure.java.io :as io])
  (:gen-class))

(def ^:const input-file "../posts.json")
(def ^:const output-file "../related_posts_clj.json")

;; TODO: use deftype or class instance(?), faster json lib mapping to array of objects
; (deftype Post [^String id tags])

(defn -main []
  (try
    (let [posts             (into-array (json/parse-string (slurp (io/file input-file)) true))

          t1                (System/currentTimeMillis)

          n                 (count posts)
          ; posts-arr         (make-array Post (count posts))

          tag-map           (loop [i 0 res {}]
                              (if (= i n)
                                res
                                (let [post (get posts i)
                                      res  (reduce (fn [res tag]
                                                     (update res tag conj i))
                                                   res
                                                   (:tags post))]
                                  (recur (inc i) res))))

          tagged-post-count (make-array Integer/TYPE n)

          results           (make-array Object n)

          _                 (loop [post-idx 0]
                              (if (< post-idx n)
                                (let [post (get posts post-idx)
                                      top5 (make-array Integer/TYPE 10)]
                                  (java.util.Arrays/fill tagged-post-count 0)
                                  (doseq [tag (:tags post)
                                          idx (tag-map tag)]
                                    (aset-int tagged-post-count idx (inc (get tagged-post-count idx))))

                                  (aset-int tagged-post-count post-idx 0)

                                  (loop [i        0
                                         min-tags 0]
                                    (if (< i n)
                                      (let [cnt (get tagged-post-count i)]
                                        (if (> cnt min-tags)
                                          (let [up (loop [upper-bound 6]
                                                     (if-not (and (>= upper-bound 0)
                                                                  (> cnt (get top5 upper-bound)))
                                                       upper-bound
                                                       (do
                                                         (aset-int top5 (+ upper-bound 2) (get top5 upper-bound))
                                                         (aset-int top5 (+ upper-bound 3) (get top5 (inc upper-bound)))
                                                         (recur (- upper-bound 2)))))]
                                            (aset-int top5 (+ up 2) cnt)
                                            (aset-int top5 (+ up 3) i)
                                            (recur (inc i) (get top5 8)))
                                          (recur (inc i) min-tags)))))

                                  (aset results post-idx
                                        {:_id     (:_id post)
                                         :tags    (:tags post)
                                         :related (->> (range 1 10 2)
                                                       (mapv #(get posts (get top5 %))))})

                                  (recur (inc post-idx)))))

          results           (seq results)

          t2                (System/currentTimeMillis)]

      (println (format "Processing time (w/o IO): %sms" (- t2 t1)))
      (spit (io/file output-file) (json/generate-string results)))

    (catch Exception e (prn e))))