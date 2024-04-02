; Auto-generated. Do not edit!


(cl:in-package sum_pkg-srv)


;//! \htmlinclude sum-request.msg.html

(cl:defclass <sum-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:float
    :initform 0.0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:float
    :initform 0.0))
)

(cl:defclass sum-request (<sum-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sum-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sum-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sum_pkg-srv:<sum-request> is deprecated: use sum_pkg-srv:sum-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <sum-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sum_pkg-srv:num1-val is deprecated.  Use sum_pkg-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <sum-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sum_pkg-srv:num2-val is deprecated.  Use sum_pkg-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sum-request>) ostream)
  "Serializes a message object of type '<sum-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'num1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'num2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sum-request>) istream)
  "Deserializes a message object of type '<sum-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'num1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'num2) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sum-request>)))
  "Returns string type for a service object of type '<sum-request>"
  "sum_pkg/sumRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sum-request)))
  "Returns string type for a service object of type 'sum-request"
  "sum_pkg/sumRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sum-request>)))
  "Returns md5sum for a message object of type '<sum-request>"
  "645c2ebd161afbc4888fe6d5e4012e2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sum-request)))
  "Returns md5sum for a message object of type 'sum-request"
  "645c2ebd161afbc4888fe6d5e4012e2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sum-request>)))
  "Returns full string definition for message of type '<sum-request>"
  (cl:format cl:nil "float64 num1~%float64 num2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sum-request)))
  "Returns full string definition for message of type 'sum-request"
  (cl:format cl:nil "float64 num1~%float64 num2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sum-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sum-request>))
  "Converts a ROS message object to a list"
  (cl:list 'sum-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude sum-response.msg.html

(cl:defclass <sum-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:float
    :initform 0.0))
)

(cl:defclass sum-response (<sum-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sum-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sum-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sum_pkg-srv:<sum-response> is deprecated: use sum_pkg-srv:sum-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <sum-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sum_pkg-srv:sum-val is deprecated.  Use sum_pkg-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sum-response>) ostream)
  "Serializes a message object of type '<sum-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sum-response>) istream)
  "Deserializes a message object of type '<sum-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sum) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sum-response>)))
  "Returns string type for a service object of type '<sum-response>"
  "sum_pkg/sumResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sum-response)))
  "Returns string type for a service object of type 'sum-response"
  "sum_pkg/sumResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sum-response>)))
  "Returns md5sum for a message object of type '<sum-response>"
  "645c2ebd161afbc4888fe6d5e4012e2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sum-response)))
  "Returns md5sum for a message object of type 'sum-response"
  "645c2ebd161afbc4888fe6d5e4012e2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sum-response>)))
  "Returns full string definition for message of type '<sum-response>"
  (cl:format cl:nil "float64 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sum-response)))
  "Returns full string definition for message of type 'sum-response"
  (cl:format cl:nil "float64 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sum-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sum-response>))
  "Converts a ROS message object to a list"
  (cl:list 'sum-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'sum)))
  'sum-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'sum)))
  'sum-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sum)))
  "Returns string type for a service object of type '<sum>"
  "sum_pkg/sum")