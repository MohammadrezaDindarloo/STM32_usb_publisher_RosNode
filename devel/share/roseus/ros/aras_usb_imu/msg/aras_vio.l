;; Auto-generated. Do not edit!


(when (boundp 'aras_usb_imu::aras_vio)
  (if (not (find-package "ARAS_USB_IMU"))
    (make-package "ARAS_USB_IMU"))
  (shadow 'aras_vio (find-package "ARAS_USB_IMU")))
(unless (find-package "ARAS_USB_IMU::ARAS_VIO")
  (make-package "ARAS_USB_IMU::ARAS_VIO"))

(in-package "ROS")
;;//! \htmlinclude aras_vio.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass aras_usb_imu::aras_vio
  :super ros::object
  :slots (_header _ts _aux_encoder ))

(defmethod aras_usb_imu::aras_vio
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ts __ts) (make-array 0 :initial-element 0 :element-type :integer))
    ((:aux_encoder __aux_encoder) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ts __ts)
   (setq _aux_encoder (round __aux_encoder))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ts
   (&optional __ts)
   (if __ts (setq _ts __ts)) _ts)
  (:aux_encoder
   (&optional __aux_encoder)
   (if __aux_encoder (setq _aux_encoder __aux_encoder)) _aux_encoder)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64[] _ts
    (* 8    (length _ts)) 4
    ;; int32 _aux_encoder
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64[] _ts
     (write-long (length _ts) s)
     (dotimes (i (length _ts))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _ts i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _ts i)) (= (length ((elt _ts i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _ts i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _ts i) . bv) 1) -1) s))
             ((and (class (elt _ts i)) (= (length ((elt _ts i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _ts i) . bv) 0) s)
              (write-long (if (>= (elt _ts i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _ts i) s)(write-long (if (>= (elt _ts i) 0) 0 #xffffffff) s)))
       )
     ;; int32 _aux_encoder
       (write-long _aux_encoder s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int64[] _ts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ts (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _ts i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _ts i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; int32 _aux_encoder
     (setq _aux_encoder (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get aras_usb_imu::aras_vio :md5sum-) "fefa939e2b3b93aed741afa88d1f56f5")
(setf (get aras_usb_imu::aras_vio :datatype-) "aras_usb_imu/aras_vio")
(setf (get aras_usb_imu::aras_vio :definition-)
      "Header header
int64[] ts
int32   aux_encoder

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :aras_usb_imu/aras_vio "fefa939e2b3b93aed741afa88d1f56f5")


