
(cl:in-package :asdf)

(defsystem "capstone-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Nodes" :depends-on ("_package_Nodes"))
    (:file "_package_Nodes" :depends-on ("_package"))
  ))