;; Auto-generated. Do not edit!


(when (boundp 'age_pkg::Age)
  (if (not (find-package "AGE_PKG"))
    (make-package "AGE_PKG"))
  (shadow 'Age (find-package "AGE_PKG")))
(unless (find-package "AGE_PKG::AGE")
  (make-package "AGE_PKG::AGE"))

(in-package "ROS")
;;//! \htmlinclude Age.msg.html


(defclass age_pkg::Age
  :super ros::object
  :slots (_days _months _years ))

(defmethod age_pkg::Age
  (:init
   (&key
    ((:days __days) 0)
    ((:months __months) 0)
    ((:years __years) 0)
    )
   (send-super :init)
   (setq _days (round __days))
   (setq _months (round __months))
   (setq _years (round __years))
   self)
  (:days
   (&optional __days)
   (if __days (setq _days __days)) _days)
  (:months
   (&optional __months)
   (if __months (setq _months __months)) _months)
  (:years
   (&optional __years)
   (if __years (setq _years __years)) _years)
  (:serialization-length
   ()
   (+
    ;; int64 _days
    8
    ;; int64 _months
    8
    ;; int64 _years
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _days
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _days (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _days) (= (length (_days . bv)) 2)) ;; bignum
              (write-long (ash (elt (_days . bv) 0) 0) s)
              (write-long (ash (elt (_days . bv) 1) -1) s))
             ((and (class _days) (= (length (_days . bv)) 1)) ;; big1
              (write-long (elt (_days . bv) 0) s)
              (write-long (if (>= _days 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _days s)(write-long (if (>= _days 0) 0 #xffffffff) s)))
     ;; int64 _months
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _months (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _months) (= (length (_months . bv)) 2)) ;; bignum
              (write-long (ash (elt (_months . bv) 0) 0) s)
              (write-long (ash (elt (_months . bv) 1) -1) s))
             ((and (class _months) (= (length (_months . bv)) 1)) ;; big1
              (write-long (elt (_months . bv) 0) s)
              (write-long (if (>= _months 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _months s)(write-long (if (>= _months 0) 0 #xffffffff) s)))
     ;; int64 _years
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _years (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _years) (= (length (_years . bv)) 2)) ;; bignum
              (write-long (ash (elt (_years . bv) 0) 0) s)
              (write-long (ash (elt (_years . bv) 1) -1) s))
             ((and (class _years) (= (length (_years . bv)) 1)) ;; big1
              (write-long (elt (_years . bv) 0) s)
              (write-long (if (>= _years 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _years s)(write-long (if (>= _years 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _days
#+(or :alpha :irix6 :x86_64)
      (setf _days (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _days (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _months
#+(or :alpha :irix6 :x86_64)
      (setf _months (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _months (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _years
#+(or :alpha :irix6 :x86_64)
      (setf _years (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _years (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get age_pkg::Age :md5sum-) "247334725da2e1f19391c83b8669c57b")
(setf (get age_pkg::Age :datatype-) "age_pkg/Age")
(setf (get age_pkg::Age :definition-)
      "int64 days
int64 months
int64 years
")



(provide :age_pkg/Age "247334725da2e1f19391c83b8669c57b")


