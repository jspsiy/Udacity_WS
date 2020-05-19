;; Auto-generated. Do not edit!


(when (boundp 'agv_control_msgs::vehInfo)
  (if (not (find-package "AGV_CONTROL_MSGS"))
    (make-package "AGV_CONTROL_MSGS"))
  (shadow 'vehInfo (find-package "AGV_CONTROL_MSGS")))
(unless (find-package "AGV_CONTROL_MSGS::VEHINFO")
  (make-package "AGV_CONTROL_MSGS::VEHINFO"))

(in-package "ROS")
;;//! \htmlinclude vehInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_control_msgs::vehInfo
  :super ros::object
  :slots (_header _vehicleName _grid _WrongRobots _xStop _yStop _currPathSeq _currPathSeg ))

(defmethod agv_control_msgs::vehInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vehicleName __vehicleName) "")
    ((:grid __grid) (instance agv_control_msgs::gridData :init))
    ((:WrongRobots __WrongRobots) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:xStop __xStop) (make-array 0 :initial-element 0 :element-type :integer))
    ((:yStop __yStop) (make-array 0 :initial-element 0 :element-type :integer))
    ((:currPathSeq __currPathSeq) 0)
    ((:currPathSeg __currPathSeg) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _vehicleName (string __vehicleName))
   (setq _grid __grid)
   (setq _WrongRobots __WrongRobots)
   (setq _xStop __xStop)
   (setq _yStop __yStop)
   (setq _currPathSeq (round __currPathSeq))
   (setq _currPathSeg (round __currPathSeg))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vehicleName
   (&optional __vehicleName)
   (if __vehicleName (setq _vehicleName __vehicleName)) _vehicleName)
  (:grid
   (&rest __grid)
   (if (keywordp (car __grid))
       (send* _grid __grid)
     (progn
       (if __grid (setq _grid (car __grid)))
       _grid)))
  (:WrongRobots
   (&optional __WrongRobots)
   (if __WrongRobots (setq _WrongRobots __WrongRobots)) _WrongRobots)
  (:xStop
   (&optional __xStop)
   (if __xStop (setq _xStop __xStop)) _xStop)
  (:yStop
   (&optional __yStop)
   (if __yStop (setq _yStop __yStop)) _yStop)
  (:currPathSeq
   (&optional __currPathSeq)
   (if __currPathSeq (setq _currPathSeq __currPathSeq)) _currPathSeq)
  (:currPathSeg
   (&optional __currPathSeg)
   (if __currPathSeg (setq _currPathSeg __currPathSeg)) _currPathSeg)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _vehicleName
    4 (length _vehicleName)
    ;; agv_control_msgs/gridData _grid
    (send _grid :serialization-length)
    ;; string[] _WrongRobots
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _WrongRobots)) 4
    ;; int32[] _xStop
    (* 4    (length _xStop)) 4
    ;; int32[] _yStop
    (* 4    (length _yStop)) 4
    ;; uint32 _currPathSeq
    4
    ;; uint32 _currPathSeg
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _vehicleName
       (write-long (length _vehicleName) s) (princ _vehicleName s)
     ;; agv_control_msgs/gridData _grid
       (send _grid :serialize s)
     ;; string[] _WrongRobots
     (write-long (length _WrongRobots) s)
     (dolist (elem _WrongRobots)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32[] _xStop
     (write-long (length _xStop) s)
     (dotimes (i (length _xStop))
       (write-long (elt _xStop i) s)
       )
     ;; int32[] _yStop
     (write-long (length _yStop) s)
     (dotimes (i (length _yStop))
       (write-long (elt _yStop i) s)
       )
     ;; uint32 _currPathSeq
       (write-long _currPathSeq s)
     ;; uint32 _currPathSeg
       (write-long _currPathSeg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _vehicleName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _vehicleName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; agv_control_msgs/gridData _grid
     (send _grid :deserialize buf ptr-) (incf ptr- (send _grid :serialization-length))
   ;; string[] _WrongRobots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _WrongRobots (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _WrongRobots i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32[] _xStop
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _xStop (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _xStop i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _yStop
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _yStop (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _yStop i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32 _currPathSeq
     (setq _currPathSeq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _currPathSeg
     (setq _currPathSeg (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_control_msgs::vehInfo :md5sum-) "c6e9ae8dd848817a5cdb6e0944422574")
(setf (get agv_control_msgs::vehInfo :datatype-) "agv_control_msgs/vehInfo")
(setf (get agv_control_msgs::vehInfo :definition-)
      "Header header

string vehicleName

gridData grid

string[] WrongRobots

int32[] xStop
int32[] yStop

uint32 currPathSeq
uint32 currPathSeg

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

================================================================================
MSG: agv_control_msgs/gridData
arrayData[] xGrid
arrayData[] yGrid
arrayData[] timeInGrid
arrayData[] timeOutGrid

================================================================================
MSG: agv_control_msgs/arrayData
float32[] data

")



(provide :agv_control_msgs/vehInfo "c6e9ae8dd848817a5cdb6e0944422574")


