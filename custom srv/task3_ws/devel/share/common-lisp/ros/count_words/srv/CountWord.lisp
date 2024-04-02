; Auto-generated. Do not edit!


(cl:in-package count_words-srv)


;//! \htmlinclude CountWord-request.msg.html

(cl:defclass <CountWord-request> (roslisp-msg-protocol:ros-message)
  ((words
    :reader words
    :initarg :words
    :type cl:string
    :initform ""))
)

(cl:defclass CountWord-request (<CountWord-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CountWord-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CountWord-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name count_words-srv:<CountWord-request> is deprecated: use count_words-srv:CountWord-request instead.")))

(cl:ensure-generic-function 'words-val :lambda-list '(m))
(cl:defmethod words-val ((m <CountWord-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader count_words-srv:words-val is deprecated.  Use count_words-srv:words instead.")
  (words m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CountWord-request>) ostream)
  "Serializes a message object of type '<CountWord-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'words))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'words))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CountWord-request>) istream)
  "Deserializes a message object of type '<CountWord-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'words) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'words) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CountWord-request>)))
  "Returns string type for a service object of type '<CountWord-request>"
  "count_words/CountWordRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CountWord-request)))
  "Returns string type for a service object of type 'CountWord-request"
  "count_words/CountWordRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CountWord-request>)))
  "Returns md5sum for a message object of type '<CountWord-request>"
  "52d808715c4d5b364d16952ee23dea9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CountWord-request)))
  "Returns md5sum for a message object of type 'CountWord-request"
  "52d808715c4d5b364d16952ee23dea9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CountWord-request>)))
  "Returns full string definition for message of type '<CountWord-request>"
  (cl:format cl:nil "string words~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CountWord-request)))
  "Returns full string definition for message of type 'CountWord-request"
  (cl:format cl:nil "string words~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CountWord-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'words))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CountWord-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CountWord-request
    (cl:cons ':words (words msg))
))
;//! \htmlinclude CountWord-response.msg.html

(cl:defclass <CountWord-response> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CountWord-response (<CountWord-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CountWord-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CountWord-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name count_words-srv:<CountWord-response> is deprecated: use count_words-srv:CountWord-response instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <CountWord-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader count_words-srv:count-val is deprecated.  Use count_words-srv:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CountWord-response>) ostream)
  "Serializes a message object of type '<CountWord-response>"
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CountWord-response>) istream)
  "Deserializes a message object of type '<CountWord-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CountWord-response>)))
  "Returns string type for a service object of type '<CountWord-response>"
  "count_words/CountWordResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CountWord-response)))
  "Returns string type for a service object of type 'CountWord-response"
  "count_words/CountWordResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CountWord-response>)))
  "Returns md5sum for a message object of type '<CountWord-response>"
  "52d808715c4d5b364d16952ee23dea9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CountWord-response)))
  "Returns md5sum for a message object of type 'CountWord-response"
  "52d808715c4d5b364d16952ee23dea9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CountWord-response>)))
  "Returns full string definition for message of type '<CountWord-response>"
  (cl:format cl:nil "int16 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CountWord-response)))
  "Returns full string definition for message of type 'CountWord-response"
  (cl:format cl:nil "int16 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CountWord-response>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CountWord-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CountWord-response
    (cl:cons ':count (count msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CountWord)))
  'CountWord-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CountWord)))
  'CountWord-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CountWord)))
  "Returns string type for a service object of type '<CountWord>"
  "count_words/CountWord")