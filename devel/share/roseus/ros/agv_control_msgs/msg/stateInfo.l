;; Auto-generated. Do not edit!


(when (boundp 'agv_control_msgs::stateInfo)
  (if (not (find-package "AGV_CONTROL_MSGS"))
    (make-package "AGV_CONTROL_MSGS"))
  (shadow 'stateInfo (find-package "AGV_CONTROL_MSGS")))
(unless (find-package "AGV_CONTROL_MSGS::STATEINFO")
  (make-package "AGV_CONTROL_MSGS::STATEINFO"))

(in-package "ROS")
;;//! \htmlinclude stateInfo.msg.html


(defclass agv_control_msgs::stateInfo
  :super ros::object
  :slots (_moving ))

(defmethod agv_control_msgs::stateInfo
  (:init
   (&key
    ((:moving __moving) 0)
    )
   (send-super :init)
   (setq _moving (round __moving))
   self)
  (:moving
   (&optional __moving)
   (if __moving (setq _moving __moving)) _moving)
  (:serialization-length
   ()
   (+
    ;; int32 _moving
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _moving
       (write-long _moving s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _moving
     (setq _moving (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_control_msgs::stateInfo :md5sum-) "c62e955e9737e1c30eefd84dfe366ed8")
(setf (get agv_control_msgs::stateInfo :datatype-) "agv_control_msgs/stateInfo")
(setf (get agv_control_msgs::stateInfo :definition-)
      "int32 moving

")



(provide :agv_control_msgs/stateInfo "c62e955e9737e1c30eefd84dfe366ed8")


