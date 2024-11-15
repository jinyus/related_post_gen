;; Install/load json lib
(ql:quickload :com.inuoe.jzon)

;; Main program
(in-package :cl-user)

(declaim (optimize (speed 3) (safety 0)))

(defstruct post
  (_id nil :type simple-string)
  (tags nil :type (simple-array string))
  (title nil :type simple-string))

(defun load-posts ()
  (map 'vector
       (lambda (p)
         (make-post :_id (gethash "_id" p)
                    :tags (gethash "tags" p)
                    :title (gethash "title" p)))
       (the simple-vector
            (com.inuoe.jzon:parse #p"../posts.json"))))

(defun top5 (tagged-post-count posts)
  (declare (type (simple-array fixnum) tagged-post-count)
           (type (simple-array post) posts))
  (loop with local-min fixnum = 0
        with top-posts = (make-list 5 :initial-element (cons 0 0))
        for i fixnum from 0
        for count across tagged-post-count
        when (> count local-min)
          do (setf top-posts (cdr (merge 'list
                                         top-posts
                                         (list (cons count i))
                                         #'<
                                         :key #'car))
                   local-min (caar top-posts))
        finally (return (loop for p in top-posts
                              collect (aref posts (cdr p))))))

(defun gen-related-posts (posts &aux
                                  (posts-count (length posts))
                                  (tag-map (make-hash-table :test #'equal)))
  (declare (type (simple-array post) posts))

  (loop for i fixnum from 0
        for post across posts
        do (loop for tag across (post-tags post)
                 do (push i (gethash tag tag-map))))

  (loop with all-related = (make-array posts-count)
        with tagged-post-count = (make-array posts-count :element-type 'fixnum)
        for i fixnum from 0
        for post across posts
        do (progn
             (fill tagged-post-count 0)
             (loop for tag across (post-tags post)
                   do (dolist (other-id (gethash tag tag-map))
                        (incf (aref tagged-post-count other-id))))
             (setf (aref tagged-post-count i) 0)
             (setf (aref all-related i)
                   (let ((h (make-hash-table :size 4 :test #'equal)))
                     (setf (gethash "_id" h) (post-_id post)
                           (gethash "tags" h) (post-tags post)
                           (gethash "title" h) (post-title post)
                           (gethash "related" h) (top5 tagged-post-count posts))
                     h)))
        finally (return all-related)))

(defun now ()
  (/ (float (get-internal-real-time)) internal-time-units-per-second))

(defun main ()
  (let* ((raw-posts (load-posts))
         (t1 (now))
         (related-posts (gen-related-posts raw-posts))
         (t2 (now)))
    (format t "Processing time (w/o IO): ~2$ s~%" (- t2 t1))
    (com.inuoe.jzon:stringify related-posts :stream #p"../related-cl.json")))

;; Compile and save executable
(save-lisp-and-die "related" :toplevel #'main :executable t :save-runtime-options t)
