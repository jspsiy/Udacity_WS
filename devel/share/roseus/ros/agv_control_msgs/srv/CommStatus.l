;; Auto-generated. Do not edit!


(when (boundp 'agv_control_msgs::CommStatus)
  (if (not (find-package "AGV_CONTROL_MSGS"))
    (make-package "AGV_CONTROL_MSGS"))
  (shadow 'CommStatus (find-package "AGV_CONTROL_MSGS")))
(unless (find-package "AGV_CONTROL_MSGS::COMMSTATUS")
  (make-package "AGV_CONTROL_MSGS::COMMSTATUS"))
(unless (find-package "AGV_CONTROL_MSGS::COMMSTATUSREQUEST")
  (make-package "AGV_CONTROL_MSGS::COMMSTATUSREQUEST"))
(unless (find-package "AGV_CONTROL_MSGS::COMMSTATUSRESPONSE")
  (make-package "AGV_CONTROL_MSGS::COMMSTATUSRESPONSE"))

(in-package "ROS")





(defclass agv_control_msgs::CommStatusRequest
  :super ros::object
  :slots (_action ))

(defmethod agv_control_msgs::CommStatusRequest
  (:init
   (&key
    ((:action __action) "")
    )
   (send-super :init)
   (setq _action (string __action))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; string _action
    4 (length _action)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass agv_control_msgs::CommStatusResponse
  :super ros::object
  :slots (_response ))

(defmethod agv_control_msgs::CommStatusResponse
  (:init
   (&key
    ((:response __response) nil)
    )
   (send-super :init)
   (setq _response __response)
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; bool _response
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _response
       (if _response (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _response
     (setq _response (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass agv_control_msgs::CommStatus
  :super ros::object
  :slots ())

(setf (get agv_control_msgs::CommStatus :md5sum-) "506f41635c0339e93c963a71da685d19")
(setf (get agv_control_msgs::CommStatus :datatype-) "agv_control_msgs/CommStatus")
(setf (get agv_control_msgs::CommStatus :request) agv_control_msgs::CommStatusRequest)
(setf (get agv_control_msgs::CommStatus :response) agv_control_msgs::CommStatusResponse)

(defmethod agv_control_msgs::CommStatusRequest
  (:response () (instance agv_control_msgs::CommStatusResponse :init)))

(setf (get agv_control_msgs::CommStatusRequest :md5sum-) "506f41635c0339e93c963a71da685d19")
(setf (get agv_control_msgs::CommStatusRequest :datatype-) "agv_control_msgs/CommStatusRequest")
(setf (get agv_control_msgs::CommStatusRequest :definition-)
      "string action
---
bool response

")

(setf (get agv_control_msgs::CommStatusResponse :md5sum-) "506f41635c0339e93c963a71da685d19")
(setf (get agv_control_msgs::CommStatusResponse :datatype-) "agv_control_msgs/CommStatusResponse")
(setf (get agv_control_msgs::CommStatusResponse :definition-)
      "string action
---
bool response

")



(provide :agv_control_msgs/CommStatus "506f41635c0339e93c963a71da685d19")


