(ns related.core
  (:require [clojure.java.io :as io])
  (:import (com.google.gson Gson))
  (:gen-class))

(def ^:const input-file "../posts.json")
(def ^:const output-file "../related_posts_clj.json")

(set! *warn-on-reflection* true)
(set! *unchecked-math* true)

(deftype Post [^String _id tags title])
(deftype PostRelated [^String _id tags related])

(defn- add-tag [v ^long i]
  (if v (conj! v i) (transient [i])))

(defn- make-tag-map [^"[Lrelated.core.Post;" posts]
  (let [n (alength posts)]
    (update-vals (loop [i 0 res {}]
                   (if (= i n)
                     res
                     (let [post ^Post (aget posts i)
                           res (reduce (fn [res tag] (update res tag add-tag i))
                                       res
                                       (.tags post))]
                       (recur (inc i) res))))
                 persistent!)))

(defn- count-tags [^Post post ^longs tagged-post-count tag-map]
  (doseq [tag (.tags post)
          idx (tag-map tag)]
    (aset tagged-post-count idx
          (inc (aget tagged-post-count idx)))))

(defn- get-top-5 [^longs tagged-post-count]
  (let [top5 (long-array 10)
        n (alength tagged-post-count)]
    (loop [i (long 0)
           min-tags (long 0)]
      (if (< i n)
        (let [cnt (aget tagged-post-count i)]
          (if (> cnt min-tags)
            (let [up (loop [upper-bound (long 6)]
                       (if-not (and (>= upper-bound 0)
                                    (> cnt (aget top5 upper-bound)))
                         upper-bound
                         (recur (- upper-bound 2))))]
              (if (< up 6)
                (System/arraycopy top5 (+ 2 up) top5 (+ 4 up) (- 6 up)))
              (aset top5 (+ up 2) cnt)
              (aset top5 (+ up 3) i)
              (recur (inc i) (aget top5 8)))
            (recur (inc i) min-tags)))))
    top5))

(defn get-all-related-posts [^"[Lrelated.core.Post;" posts]
  (let [n (alength posts)

        tag-map (make-tag-map posts)

        tagged-post-count (long-array n)

        results ^"[Lrelated.core.PostRelated;" (make-array PostRelated n)

        _ (dotimes [post-idx n]
            (let [^Post post (aget posts post-idx)]
              (java.util.Arrays/fill tagged-post-count 0)

              (count-tags post tagged-post-count tag-map)

              (aset tagged-post-count post-idx 0)

              (let [top5 (get-top-5 tagged-post-count)]
                (aset results post-idx
                      (PostRelated. (._id post) (.tags post)
                                    (->> (range 1 10 2)
                                         (mapv #(aget posts (aget ^longs top5 %)))))))))]
    results))

(defn -main []
  (try
    (let [posts ^"[Lrelated.core.Post;" (.fromJson (Gson.)
                                                   (slurp (io/file input-file))
                                                   (class (make-array Post 0)))

          ;; warmup
          _ (do (get-all-related-posts
                 (java.util.Arrays/copyOfRange posts 0 (min 5000 (alength posts))))
                (System/gc))
          ;; ------

          t1 (System/currentTimeMillis)

          results (get-all-related-posts posts)

          t2 (System/currentTimeMillis)]

      (println (format "Processing time (w/o IO): %sms" (- t2 t1)))
      (spit (io/file output-file) (.toJson (Gson.) results)))

    (catch Exception e (prn e))))
