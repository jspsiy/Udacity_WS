;; Auto-generated. Do not edit!


(when (boundp 'capstone::Nodes)
  (if (not (find-package "CAPSTONE"))
    (make-package "CAPSTONE"))
  (shadow 'Nodes (find-package "CAPSTONE")))
(unless (find-package "CAPSTONE::NODES")
  (make-package "CAPSTONE::NODES"))

(in-package "ROS")
;;//! \htmlinclude Nodes.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass capstone::Nodes
  :super ros::object
  :slots (_points ))

(defmethod capstone::Nodes
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get capstone::Nodes :md5sum-) "3fb3f9dacc279b964c4c8341122c34df")
(setf (get capstone::Nodes :datatype-) "capstone/Nodes")
(setf (get capstone::Nodes :definition-)
      "geometry_msgs/Point[] points

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :capstone/Nodes "3fb3f9dacc279b964c4c8341122c34df")


