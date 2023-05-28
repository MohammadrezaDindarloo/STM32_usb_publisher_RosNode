
(cl:in-package :asdf)

(defsystem "aras_usb_imu-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "aras_vio" :depends-on ("_package_aras_vio"))
    (:file "_package_aras_vio" :depends-on ("_package"))
  ))