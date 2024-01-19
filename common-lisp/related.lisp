(declaim (optimize (speed 3) (safety 1)))

;; Install/load json lib
(ql:quickload :com.inuoe.jzon)

;; Main program
(in-package :cl-user)

(defparameter *top-n* 5)

(defstruct post
  (id nil :type simple-string)
  (tags nil :type simple-vector)
  (title nil :type simple-string))

(defmacro dotags ((tag post) &body body)
  (let ((post-n post)
        (tags-n (gensym)))
    `(let ((,tags-n
             (slot-value ,post-n 'tags)))
       (declare (type simple-vector ,tags-n))
       (loop for ,tag across ,tags-n do (progn ,@body)))))

(defun build-tag-map (posts)
  (declare (type simple-vector posts))
  (let ((tag-map (make-hash-table :size 100 :test 'equal)))
    (dotimes (i (length posts))
      (dotags (tag (aref posts i))
        (setf (gethash tag tag-map) (cons i (gethash tag tag-map)))))
    tag-map))

(defun all-related (i posts tag-map)
  (declare (type simple-vector posts))
  (let ((tagged-post-count (make-array (length posts)
                                       :initial-element 0
                                       :element-type 'fixnum))
        (post (aref posts i)))
    (dotags (tag post)
      (dolist (other-post-index (gethash tag tag-map))
        (incf (aref tagged-post-count other-post-index))))
    (setf (aref tagged-post-count i) 0) ;Don't count self
    tagged-post-count))

(defun top-related (tagged-post-count)
  (declare (type (simple-array fixnum *) tagged-post-count))
  (let ((local-min 0)
        (top-posts (make-list *top-n* :initial-element '(0 . 0))))
    (declare (type fixnum local-min))
    (dotimes (index (length tagged-post-count))
      (let ((count (aref tagged-post-count index)))
        (when (> count local-min)
          (setf top-posts (cdr (merge 'list top-posts (list (cons count index)) #'< :key #'car)))
          (setf local-min (caar top-posts)))))
    (mapcar #'cdr top-posts)))

(defun make-related-post (post related)
  (let ((related-post (make-hash-table :test 'equal)))
    (setf (gethash "_id" related-post) (slot-value post 'id)

          (gethash "tags" related-post) (slot-value post 'tags)

          (gethash "related" related-post) related)
    related-post))

(defun add-related (posts)
  (let ((tag-map (build-tag-map posts))
        (all-related-posts (make-array (length posts))))

    (dotimes (i (length posts))
      (let* ((post (aref posts i))
             (top-posts-ids (top-related (all-related i posts tag-map)))
             (top-posts (mapcar (lambda (id) (aref posts id)) top-posts-ids)))
        (setf (aref all-related-posts i)
              (make-related-post post top-posts))))
    all-related-posts))

(defun now ()
  (float (/ (get-internal-real-time)
            internal-time-units-per-second)))

(defun prepare-for-output (data)
  (declare (type simple-vector data))
  (map 'vector (lambda (rel)
                 (setf (gethash "related" rel)
                       (mapcar (lambda (p)
                                 (let ((h (make-hash-table :test 'equal :size 3)))
                                   (setf (gethash "_id" h) (post-id p)
                                         (gethash "tags" h) (post-tags p)
                                         (gethash "title" h) (post-title p))
                                   h))
                               (gethash "related" rel)))
                 rel)
       data))

(defun main ()
  (let* ((raw-posts (map 'vector
                         (lambda (p)
                           (make-post :id (gethash "_id" p)
                                      :tags (gethash "tags" p)
                                      :title (gethash "title" p)))
                         (the simple-vector
                              (com.inuoe.jzon:parse #p"../posts.json"))))
         (t1 (now))
         (related-posts (add-related raw-posts))
         (t2 (now)))
    (format t "Processing time (w/o IO): ~2$ s~%" (- t2 t1))
    (com.inuoe.jzon:stringify
     (prepare-for-output related-posts)
     :stream #p"../related-cl.json")))

;; Compile and save executable
(save-lisp-and-die "related" :toplevel #'main :executable t :save-runtime-options t)
