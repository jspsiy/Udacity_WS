
(cl:in-package :asdf)

(defsystem "agv_control_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :agv_control_msgs-msg
               :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "CommStatus" :depends-on ("_package_CommStatus"))
    (:file "_package_CommStatus" :depends-on ("_package"))
    (:file "GetMyPlan" :depends-on ("_package_GetMyPlan"))
    (:file "_package_GetMyPlan" :depends-on ("_package"))
    (:file "Removal" :depends-on ("_package_Removal"))
    (:file "_package_Removal" :depends-on ("_package"))
    (:file "SignBoard" :depends-on ("_package_SignBoard"))
    (:file "_package_SignBoard" :depends-on ("_package"))
  ))