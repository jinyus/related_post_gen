#lang racket/base

(require json)

(define N 5)

(when (< N 1)
  (error (format "N must be positive, but was ~a" N)))

(struct post (_id title tags))

(struct related-posts (_id tags related))

(define input "../posts.json")

(define output "../related_posts_racket.json")

(define (hash->post h)
  (post (hash-ref h '_id)
        (hash-ref h 'title)
        (map string->symbol (hash-ref h 'tags))))

(define (post->hash p)
  (hasheq '_id (post-_id p)
          'title (post-title p)
          'tags (map symbol->string (post-tags p))))

(define (related-posts->hash r)
  (hasheq '_id (related-posts-_id r)
          'tags (map symbol->string (related-posts-tags r))
          'related (map post->hash (related-posts-related r))))

(define (make-tag-map posts indices)
  (let ([tag-map (make-hasheq)])
    (for* ([index (in-range indices)]
           [tag (in-list (post-tags (vector-ref posts index)))])
      (hash-update! tag-map
                    tag
                    (λ (related-indices) (cons index related-indices))
                    '()))
    tag-map))

(define (read-posts path)
  (for/vector ([h (in-list (with-input-from-file path read-json))])
    (hash->post h)))

(define (write-posts posts path)
  (with-output-to-file
    path
    (λ () (write-json (for/list ([p (in-vector posts)])
                        (related-posts->hash p))))
    #:exists 'replace))

(define (tally tag-map post index indices)
  (let ([counts (make-vector indices 0)])
    (for* ([tag (in-list (post-tags post))]
           [related-index (in-list (hash-ref tag-map tag))])
      (vector-set! counts
                   related-index
                   (+ (vector-ref counts related-index) 1)))
    (vector-set! counts index 0) ;; remove self
    counts))

(define (top-n counts posts indices)
  (let ([min-count 0]
        [top-counts (make-vector N 0)]
        [top-indices (make-vector N 0)])
    (for ([index (in-range indices)])
      (let ([count (vector-ref counts index)])
        (when (> count min-count)
          (let loop ([rank (- N 2)])
            (if (and (>= rank 0)
                     (> count (vector-ref top-counts rank)))
              (loop (- rank 1))
              (let ([rank (+ rank 1)])
                (when (< rank (- N 1))
                  (for ([rank (in-inclusive-range (- N 2) rank -1)])
                    (vector-set! top-counts
                                 (+ rank 1)
                                 (vector-ref top-counts rank))
                    (vector-set! top-indices
                                 (+ rank 1)
                                 (vector-ref top-indices rank))))
                (vector-set! top-counts rank count)
                (vector-set! top-indices rank index)
                (set! min-count
                      (vector-ref top-counts (- N 1)))))))))
    (for/list ([index (in-vector top-indices)])
      (vector-ref posts index))))

(define (process posts)
  (let* ([indices (vector-length posts)]
         [related (make-vector indices (related-posts "" '() '()))]
         [tag-map (make-tag-map posts indices)])
    (for ([index (in-range indices)])
      (let* ([post (vector-ref posts index)]
             [counts (tally tag-map post index indices)])
        (vector-set! related
                     index
                     (related-posts (post-_id post)
                                    (post-tags post)
                                    (top-n counts posts indices)))))
    related))

(define posts (read-posts input))

(collect-garbage)

(define start-time (current-inexact-monotonic-milliseconds))

(define related (process posts))

(define end-time (current-inexact-monotonic-milliseconds))

(write-posts related output)

(printf "Processing time (w/o IO): ~ams~n"
        (real->decimal-string (- end-time start-time)))
