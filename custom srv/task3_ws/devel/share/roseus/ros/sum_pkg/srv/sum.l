;; Auto-generated. Do not edit!


(when (boundp 'sum_pkg::sum)
  (if (not (find-package "SUM_PKG"))
    (make-package "SUM_PKG"))
  (shadow 'sum (find-package "SUM_PKG")))
(unless (find-package "SUM_PKG::SUM")
  (make-package "SUM_PKG::SUM"))
(unless (find-package "SUM_PKG::SUMREQUEST")
  (make-package "SUM_PKG::SUMREQUEST"))
(unless (find-package "SUM_PKG::SUMRESPONSE")
  (make-package "SUM_PKG::SUMRESPONSE"))

(in-package "ROS")





(defclass sum_pkg::sumRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod sum_pkg::sumRequest
  (:init
   (&key
    ((:num1 __num1) 0.0)
    ((:num2 __num2) 0.0)
    )
   (send-super :init)
   (setq _num1 (float __num1))
   (setq _num2 (float __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; float64 _num1
    8
    ;; float64 _num2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _num1
       (sys::poke _num1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _num2
       (sys::poke _num2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _num1
     (setq _num1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _num2
     (setq _num2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass sum_pkg::sumResponse
  :super ros::object
  :slots (_sum ))

(defmethod sum_pkg::sumResponse
  (:init
   (&key
    ((:sum __sum) 0.0)
    )
   (send-super :init)
   (setq _sum (float __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; float64 _sum
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _sum
       (sys::poke _sum (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _sum
     (setq _sum (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass sum_pkg::sum
  :super ros::object
  :slots ())

(setf (get sum_pkg::sum :md5sum-) "645c2ebd161afbc4888fe6d5e4012e2f")
(setf (get sum_pkg::sum :datatype-) "sum_pkg/sum")
(setf (get sum_pkg::sum :request) sum_pkg::sumRequest)
(setf (get sum_pkg::sum :response) sum_pkg::sumResponse)

(defmethod sum_pkg::sumRequest
  (:response () (instance sum_pkg::sumResponse :init)))

(setf (get sum_pkg::sumRequest :md5sum-) "645c2ebd161afbc4888fe6d5e4012e2f")
(setf (get sum_pkg::sumRequest :datatype-) "sum_pkg/sumRequest")
(setf (get sum_pkg::sumRequest :definition-)
      "float64 num1
float64 num2

---
float64 sum
")

(setf (get sum_pkg::sumResponse :md5sum-) "645c2ebd161afbc4888fe6d5e4012e2f")
(setf (get sum_pkg::sumResponse :datatype-) "sum_pkg/sumResponse")
(setf (get sum_pkg::sumResponse :definition-)
      "float64 num1
float64 num2

---
float64 sum
")



(provide :sum_pkg/sum "645c2ebd161afbc4888fe6d5e4012e2f")


