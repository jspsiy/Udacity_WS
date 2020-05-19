;; Auto-generated. Do not edit!


(when (boundp 'agv_control_msgs::Removal)
  (if (not (find-package "AGV_CONTROL_MSGS"))
    (make-package "AGV_CONTROL_MSGS"))
  (shadow 'Removal (find-package "AGV_CONTROL_MSGS")))
(unless (find-package "AGV_CONTROL_MSGS::REMOVAL")
  (make-package "AGV_CONTROL_MSGS::REMOVAL"))
(unless (find-package "AGV_CONTROL_MSGS::REMOVALREQUEST")
  (make-package "AGV_CONTROL_MSGS::REMOVALREQUEST"))
(unless (find-package "AGV_CONTROL_MSGS::REMOVALRESPONSE")
  (make-package "AGV_CONTROL_MSGS::REMOVALRESPONSE"))

(in-package "ROS")





(defclass agv_control_msgs::RemovalRequest
  :super ros::object
  :slots (_vehicleName _priority _req_pz_seq _message ))

(defmethod agv_control_msgs::RemovalRequest
  (:init
   (&key
    ((:vehicleName __vehicleName) "")
    ((:priority __priority) 0)
    ((:req_pz_seq __req_pz_seq) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _vehicleName (string __vehicleName))
   (setq _priority (round __priority))
   (setq _req_pz_seq (round __req_pz_seq))
   (setq _message (string __message))
   self)
  (:vehicleName
   (&optional __vehicleName)
   (if __vehicleName (setq _vehicleName __vehicleName)) _vehicleName)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:req_pz_seq
   (&optional __req_pz_seq)
   (if __req_pz_seq (setq _req_pz_seq __req_pz_seq)) _req_pz_seq)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _vehicleName
    4 (length _vehicleName)
    ;; int32 _priority
    4
    ;; int32 _req_pz_seq
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _vehicleName
       (write-long (length _vehicleName) s) (princ _vehicleName s)
     ;; int32 _priority
       (write-long _priority s)
     ;; int32 _req_pz_seq
       (write-long _req_pz_seq s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _vehicleName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _vehicleName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _priority
     (setq _priority (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _req_pz_seq
     (setq _req_pz_seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass agv_control_msgs::RemovalResponse
  :super ros::object
  :slots (_removalStarted ))

(defmethod agv_control_msgs::RemovalResponse
  (:init
   (&key
    ((:removalStarted __removalStarted) nil)
    )
   (send-super :init)
   (setq _removalStarted __removalStarted)
   self)
  (:removalStarted
   (&optional __removalStarted)
   (if __removalStarted (setq _removalStarted __removalStarted)) _removalStarted)
  (:serialization-length
   ()
   (+
    ;; bool _removalStarted
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _removalStarted
       (if _removalStarted (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _removalStarted
     (setq _removalStarted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass agv_control_msgs::Removal
  :super ros::object
  :slots ())

(setf (get agv_control_msgs::Removal :md5sum-) "d5f813c7363f04e91a9f024e37136d87")
(setf (get agv_control_msgs::Removal :datatype-) "agv_control_msgs/Removal")
(setf (get agv_control_msgs::Removal :request) agv_control_msgs::RemovalRequest)
(setf (get agv_control_msgs::Removal :response) agv_control_msgs::RemovalResponse)

(defmethod agv_control_msgs::RemovalRequest
  (:response () (instance agv_control_msgs::RemovalResponse :init)))

(setf (get agv_control_msgs::RemovalRequest :md5sum-) "d5f813c7363f04e91a9f024e37136d87")
(setf (get agv_control_msgs::RemovalRequest :datatype-) "agv_control_msgs/RemovalRequest")
(setf (get agv_control_msgs::RemovalRequest :definition-)
      "string vehicleName
int32 priority
int32 req_pz_seq

string message
---
bool removalStarted

")

(setf (get agv_control_msgs::RemovalResponse :md5sum-) "d5f813c7363f04e91a9f024e37136d87")
(setf (get agv_control_msgs::RemovalResponse :datatype-) "agv_control_msgs/RemovalResponse")
(setf (get agv_control_msgs::RemovalResponse :definition-)
      "string vehicleName
int32 priority
int32 req_pz_seq

string message
---
bool removalStarted

")



(provide :agv_control_msgs/Removal "d5f813c7363f04e91a9f024e37136d87")


