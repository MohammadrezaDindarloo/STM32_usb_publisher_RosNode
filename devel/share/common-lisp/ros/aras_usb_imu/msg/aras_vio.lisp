; Auto-generated. Do not edit!


(cl:in-package aras_usb_imu-msg)


;//! \htmlinclude aras_vio.msg.html

(cl:defclass <aras_vio> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ts
    :reader ts
    :initarg :ts
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (aux_encoder
    :reader aux_encoder
    :initarg :aux_encoder
    :type cl:integer
    :initform 0))
)

(cl:defclass aras_vio (<aras_vio>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <aras_vio>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'aras_vio)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aras_usb_imu-msg:<aras_vio> is deprecated: use aras_usb_imu-msg:aras_vio instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <aras_vio>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aras_usb_imu-msg:header-val is deprecated.  Use aras_usb_imu-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ts-val :lambda-list '(m))
(cl:defmethod ts-val ((m <aras_vio>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aras_usb_imu-msg:ts-val is deprecated.  Use aras_usb_imu-msg:ts instead.")
  (ts m))

(cl:ensure-generic-function 'aux_encoder-val :lambda-list '(m))
(cl:defmethod aux_encoder-val ((m <aras_vio>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aras_usb_imu-msg:aux_encoder-val is deprecated.  Use aras_usb_imu-msg:aux_encoder instead.")
  (aux_encoder m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <aras_vio>) ostream)
  "Serializes a message object of type '<aras_vio>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'ts))
  (cl:let* ((signed (cl:slot-value msg 'aux_encoder)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <aras_vio>) istream)
  "Deserializes a message object of type '<aras_vio>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'aux_encoder) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<aras_vio>)))
  "Returns string type for a message object of type '<aras_vio>"
  "aras_usb_imu/aras_vio")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'aras_vio)))
  "Returns string type for a message object of type 'aras_vio"
  "aras_usb_imu/aras_vio")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<aras_vio>)))
  "Returns md5sum for a message object of type '<aras_vio>"
  "fefa939e2b3b93aed741afa88d1f56f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'aras_vio)))
  "Returns md5sum for a message object of type 'aras_vio"
  "fefa939e2b3b93aed741afa88d1f56f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<aras_vio>)))
  "Returns full string definition for message of type '<aras_vio>"
  (cl:format cl:nil "Header header~%int64[] ts~%int32   aux_encoder~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'aras_vio)))
  "Returns full string definition for message of type 'aras_vio"
  (cl:format cl:nil "Header header~%int64[] ts~%int32   aux_encoder~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <aras_vio>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <aras_vio>))
  "Converts a ROS message object to a list"
  (cl:list 'aras_vio
    (cl:cons ':header (header msg))
    (cl:cons ':ts (ts msg))
    (cl:cons ':aux_encoder (aux_encoder msg))
))
