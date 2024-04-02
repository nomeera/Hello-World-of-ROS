;; Auto-generated. Do not edit!


(when (boundp 'count_words::CountWord)
  (if (not (find-package "COUNT_WORDS"))
    (make-package "COUNT_WORDS"))
  (shadow 'CountWord (find-package "COUNT_WORDS")))
(unless (find-package "COUNT_WORDS::COUNTWORD")
  (make-package "COUNT_WORDS::COUNTWORD"))
(unless (find-package "COUNT_WORDS::COUNTWORDREQUEST")
  (make-package "COUNT_WORDS::COUNTWORDREQUEST"))
(unless (find-package "COUNT_WORDS::COUNTWORDRESPONSE")
  (make-package "COUNT_WORDS::COUNTWORDRESPONSE"))

(in-package "ROS")





(defclass count_words::CountWordRequest
  :super ros::object
  :slots (_words ))

(defmethod count_words::CountWordRequest
  (:init
   (&key
    ((:words __words) "")
    )
   (send-super :init)
   (setq _words (string __words))
   self)
  (:words
   (&optional __words)
   (if __words (setq _words __words)) _words)
  (:serialization-length
   ()
   (+
    ;; string _words
    4 (length _words)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _words
       (write-long (length _words) s) (princ _words s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _words
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _words (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass count_words::CountWordResponse
  :super ros::object
  :slots (_count ))

(defmethod count_words::CountWordResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; int16 _count
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _count
       (write-word _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _count
     (setq _count (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass count_words::CountWord
  :super ros::object
  :slots ())

(setf (get count_words::CountWord :md5sum-) "52d808715c4d5b364d16952ee23dea9c")
(setf (get count_words::CountWord :datatype-) "count_words/CountWord")
(setf (get count_words::CountWord :request) count_words::CountWordRequest)
(setf (get count_words::CountWord :response) count_words::CountWordResponse)

(defmethod count_words::CountWordRequest
  (:response () (instance count_words::CountWordResponse :init)))

(setf (get count_words::CountWordRequest :md5sum-) "52d808715c4d5b364d16952ee23dea9c")
(setf (get count_words::CountWordRequest :datatype-) "count_words/CountWordRequest")
(setf (get count_words::CountWordRequest :definition-)
      "string words

---
int16 count
")

(setf (get count_words::CountWordResponse :md5sum-) "52d808715c4d5b364d16952ee23dea9c")
(setf (get count_words::CountWordResponse :datatype-) "count_words/CountWordResponse")
(setf (get count_words::CountWordResponse :definition-)
      "string words

---
int16 count
")



(provide :count_words/CountWord "52d808715c4d5b364d16952ee23dea9c")


