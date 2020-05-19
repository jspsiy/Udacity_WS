;; Auto-generated. Do not edit!


(when (boundp 'agv_control_msgs::stringArray)
  (if (not (find-package "AGV_CONTROL_MSGS"))
    (make-package "AGV_CONTROL_MSGS"))
  (shadow 'stringArray (find-package "AGV_CONTROL_MSGS")))
(unless (find-package "AGV_CONTROL_MSGS::STRINGARRAY")
  (make-package "AGV_CONTROL_MSGS::STRINGARRAY"))

(in-package "ROS")
;;//! \htmlinclude stringArray.msg.html


(defclass agv_control_msgs::stringArray
  :super ros::object
  :slots (_data ))

(defmethod agv_control_msgs::stringArray
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string[] _data
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _data i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get agv_control_msgs::stringArray :md5sum-) "cce5a364f3a3be12c9722c6dcad2fa94")
(setf (get agv_control_msgs::stringArray :datatype-) "agv_control_msgs/stringArray")
(setf (get agv_control_msgs::stringArray :definition-)
      "string[] data

")



(provide :agv_control_msgs/stringArray "cce5a364f3a3be12c9722c6dcad2fa94")


