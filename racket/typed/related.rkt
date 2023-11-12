#lang typed/racket/base

(require json-comb
         typed/json)

(require/typed racket/base
               [current-inexact-monotonic-milliseconds (-> Real)])

(define N : Positive-Integer 5)
(define N-1 (- N 1))
(define N-2 (- N 2))

(define-json-types
  [jspost ([_id : String] [title : String] [tags : (Listof String)])]
  [jsposts (Listof jspost)])

(define-type JSPost jspost)
(define-type Post post)
(define-type Posts (Listof Post))
(define-type PostIndex Integer)
(define-type PostIndices (Listof PostIndex))
(define-type RelatedCounts (Vectorof Integer))
(define-type RelatedPosts related-posts)
(define-type Tag Symbol)
(define-type Tags (Listof Tag))
(define-type TagMap (HashTable Tag PostIndices))
(define-type VecLen Integer)
(define-type VecPosts (Vectorof Post))
(define-type VecRelatedPosts (Vectorof RelatedPosts))

(struct post ([_id : String] [title : String] [tags : Tags]))
(struct related-posts ([_id : String] [tags : Tags] [related : Posts]))

(: jspost->post (-> JSPost Post))
(define (jspost->post p)
  (post (jspost-_id p)
        (jspost-title p)
        (map string->symbol (jspost-tags p))))

(: post->hash (-> Post JSExpr))
(define (post->hash p)
  (hasheq '_id (post-_id p)
          'title (post-title p)
          'tags (map symbol->string (post-tags p))))

(: related-posts->hash (-> RelatedPosts JSExpr))
(define (related-posts->hash r)
  (hasheq '_id (related-posts-_id r)
          'tags (map symbol->string (related-posts-tags r))
          'related (map post->hash (related-posts-related r))))

(: lopi (-> PostIndices))
(define (lopi) (list))

(: make-tag-map (-> VecPosts TagMap))
(define (make-tag-map posts)
  (let ([tag-map : TagMap (make-hasheq)])
    (for* ([index (in-range (vector-length posts))]
           [tag (in-list (post-tags (vector-ref posts index)))])
      (hash-update! tag-map
                    tag
                    (λ ([related : PostIndices]) (cons index related))
                    lopi))
    tag-map))

(: read-posts (-> Path-String VecPosts))
(define (read-posts path)
  (let ([jsposts (read-jsposts (open-input-file path))])
    (for/vector : VecPosts
                #:length (length jsposts)
                ([p (in-list jsposts)])
      (jspost->post p))))

(: write-posts (-> VecRelatedPosts Path-String Void))
(define (write-posts posts path)
  (let ([jsposts (for/list : (Listof JSExpr)
                           ([p (in-vector posts)])
                   (related-posts->hash p))])
    (write-json jsposts (open-output-file path #:exists 'replace)))
  (void))

(: tally (-> TagMap Post PostIndex VecLen RelatedCounts))
(define (tally tag-map post index posts-len)
  (let ([counts (make-vector posts-len 0)])
    (for* ([tag (in-list (post-tags post))]
           [related-index (in-list (hash-ref tag-map tag))])
      (vector-set! counts
                   related-index
                   (add1 (vector-ref counts related-index))))
    (vector-set! counts index 0) ;; remove self
    counts))

(: top-n (-> RelatedCounts VecPosts VecLen Posts))
(define (top-n counts posts posts-len)
  (let ([min-count 0]
        [top-counts (make-vector N 0)]
        [top-indices (make-vector N 0)])
    (for ([index (in-range posts-len)])
      (let ([count (vector-ref counts index)])
        (when (> count min-count)
          (let loop ([rank N-2])
            (if (and (>= rank 0)
                     (> count (vector-ref top-counts rank)))
              (loop (sub1 rank))
              (let ([rank (add1 rank)])
                (when (< rank N-1)
                  (for ([rank (in-range N-2 (sub1 rank) -1)])
                    (vector-set! top-counts
                                 (add1 rank)
                                 (vector-ref top-counts rank))
                    (vector-set! top-indices
                                 (add1 rank)
                                 (vector-ref top-indices rank))))
                (vector-set! top-counts rank count)
                (vector-set! top-indices rank index)
                (set! min-count
                      (vector-ref top-counts N-1))))))))
    (for/list : Posts
              ([index (in-vector top-indices)])
      (vector-ref posts index))))

(: process (-> VecPosts VecRelatedPosts))
(define (process posts)
  (let ([posts-len (vector-length posts)]
        [tag-map (make-tag-map posts)])
    (for/vector : VecRelatedPosts
                #:length posts-len
                ([index (in-range posts-len)])
      (let* ([post (vector-ref posts index)]
             [counts (tally tag-map post index posts-len)])
        (related-posts (post-_id post)
                       (post-tags post)
                       (top-n counts posts posts-len))))))

(module+ main
  ;; `input` and `output` paths are relative to parent directory of this script
  ;; cli exec: $ racket typed/related.rkt
  (define input "../posts.json")
  (define output "../related_posts_typed_racket.json")
  (define posts (read-posts input))
  (collect-garbage)
  (define start-time (current-inexact-monotonic-milliseconds))
  (define related (process posts))
  (define end-time (current-inexact-monotonic-milliseconds))
  (write-posts related output)
  (printf "Processing time (w/o IO): ~ams~n"
          (real->decimal-string (- end-time start-time) 2)))
