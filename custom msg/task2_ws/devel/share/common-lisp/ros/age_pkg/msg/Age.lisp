; Auto-generated. Do not edit!


(cl:in-package age_pkg-msg)


;//! \htmlinclude Age.msg.html

(cl:defclass <Age> (roslisp-msg-protocol:ros-message)
  ((days
    :reader days
    :initarg :days
    :type cl:integer
    :initform 0)
   (months
    :reader months
    :initarg :months
    :type cl:integer
    :initform 0)
   (years
    :reader years
    :initarg :years
    :type cl:integer
    :initform 0))
)

(cl:defclass Age (<Age>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Age>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Age)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name age_pkg-msg:<Age> is deprecated: use age_pkg-msg:Age instead.")))

(cl:ensure-generic-function 'days-val :lambda-list '(m))
(cl:defmethod days-val ((m <Age>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader age_pkg-msg:days-val is deprecated.  Use age_pkg-msg:days instead.")
  (days m))

(cl:ensure-generic-function 'months-val :lambda-list '(m))
(cl:defmethod months-val ((m <Age>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader age_pkg-msg:months-val is deprecated.  Use age_pkg-msg:months instead.")
  (months m))

(cl:ensure-generic-function 'years-val :lambda-list '(m))
(cl:defmethod years-val ((m <Age>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader age_pkg-msg:years-val is deprecated.  Use age_pkg-msg:years instead.")
  (years m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Age>) ostream)
  "Serializes a message object of type '<Age>"
  (cl:let* ((signed (cl:slot-value msg 'days)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'months)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'years)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Age>) istream)
  "Deserializes a message object of type '<Age>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'days) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'months) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'years) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Age>)))
  "Returns string type for a message object of type '<Age>"
  "age_pkg/Age")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Age)))
  "Returns string type for a message object of type 'Age"
  "age_pkg/Age")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Age>)))
  "Returns md5sum for a message object of type '<Age>"
  "247334725da2e1f19391c83b8669c57b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Age)))
  "Returns md5sum for a message object of type 'Age"
  "247334725da2e1f19391c83b8669c57b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Age>)))
  "Returns full string definition for message of type '<Age>"
  (cl:format cl:nil "int64 days~%int64 months~%int64 years~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Age)))
  "Returns full string definition for message of type 'Age"
  (cl:format cl:nil "int64 days~%int64 months~%int64 years~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Age>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Age>))
  "Converts a ROS message object to a list"
  (cl:list 'Age
    (cl:cons ':days (days msg))
    (cl:cons ':months (months msg))
    (cl:cons ':years (years msg))
))
