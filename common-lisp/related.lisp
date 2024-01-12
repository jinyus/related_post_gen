;; Install quicklisp (package manager) + json lib

(load "quicklisp.lisp")

(unless (find-package '#:ql)
  (quicklisp-quickstart:install))

(ql:quickload :com.inuoe.jzon)

;; Main programm
(in-package :cl-user)
(declaim (optimize speed))

(defparameter *top-n* 5)

(defmacro dotags ((tag post) &body body)
  (sb-int:once-only ((post-n post))
    `(sb-int:dovector (,tag (gethash "tags" ,post-n))
       ,@body)))

(defun build-tag-map (posts)
  (let ((tag-map (make-hash-table :size 100 :test 'equal)))
    (dotimes (i (length posts))
      (dotags (tag (aref posts i))
        (setf (gethash tag tag-map) (cons i (gethash tag tag-map)))))
    tag-map))


(defun all-related (i posts tag-map)
  (let ((tagged-post-count (make-array (length posts) :initial-element 0 :element-type 'integer))
        (post (aref posts i)))
    (dotags (tag post)
      (dolist (other-post-index (gethash tag tag-map))
        (incf (aref tagged-post-count other-post-index))))
    (setf (aref tagged-post-count i) 0) ;Don't count self
    tagged-post-count))

(defun top-related (tagged-post-count)
  (let ((local-min 0)
        (top-posts (make-list *top-n* :initial-element '(0 . 0))))
    (dotimes (index (length tagged-post-count))
      (let ((count (aref tagged-post-count index)))
        (when (> count local-min)
          (setf top-posts (cdr (merge 'list top-posts (list (cons count index)) #'< :key #'car)))
          (setf local-min (caar top-posts)))))
    (mapcar #'cdr top-posts)))

(defun make-related-post (post related)
  (let ((related-post (make-hash-table :test 'equal)))
    (setf (gethash "_id" related-post) (gethash "_id" post))
    (setf (gethash "tags" related-post) (gethash "tags" post))
    (setf (gethash "related" related-post) related)
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

(defun main ()
  (let* ((t1 (get-universal-time))
         (raw-posts (com.inuoe.jzon:parse #p"../posts.json"))
         (t2 (get-universal-time))
         (related-posts (add-related raw-posts))
         (t3 (get-universal-time)))
    (format t "Posts readed: ~a~%" (length raw-posts))
    (format t "Processing time (w/o IO): ~a s~%" (- t3 t2))
    (com.inuoe.jzon:stringify related-posts :stream #p"../related-cl.json")

    (format t "Processing time total: ~a ms~%" (- (get-universal-time) t1))))

;; Compile and save executible
(save-lisp-and-die "related" :toplevel #'main :executable t)
