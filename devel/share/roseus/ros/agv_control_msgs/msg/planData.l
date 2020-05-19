;; Auto-generated. Do not edit!


(when (boundp 'agv_control_msgs::planData)
  (if (not (find-package "AGV_CONTROL_MSGS"))
    (make-package "AGV_CONTROL_MSGS"))
  (shadow 'planData (find-package "AGV_CONTROL_MSGS")))
(unless (find-package "AGV_CONTROL_MSGS::PLANDATA")
  (make-package "AGV_CONTROL_MSGS::PLANDATA"))

(in-package "ROS")
;;//! \htmlinclude planData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_control_msgs::planData
  :super ros::object
  :slots (_header _xp _yp _fip _sp _sectors _pz_control _grid ))

(defmethod agv_control_msgs::planData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:xp __xp) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:yp __yp) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:fip __fip) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sp __sp) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sectors __sectors) (let (r) (dotimes (i 0) (push (instance agv_control_msgs::stringArray :init) r)) r))
    ((:pz_control __pz_control) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:grid __grid) (instance agv_control_msgs::gridData :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _xp __xp)
   (setq _yp __yp)
   (setq _fip __fip)
   (setq _sp __sp)
   (setq _sectors __sectors)
   (setq _pz_control __pz_control)
   (setq _grid __grid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:xp
   (&optional __xp)
   (if __xp (setq _xp __xp)) _xp)
  (:yp
   (&optional __yp)
   (if __yp (setq _yp __yp)) _yp)
  (:fip
   (&optional __fip)
   (if __fip (setq _fip __fip)) _fip)
  (:sp
   (&optional __sp)
   (if __sp (setq _sp __sp)) _sp)
  (:sectors
   (&rest __sectors)
   (if (keywordp (car __sectors))
       (send* _sectors __sectors)
     (progn
       (if __sectors (setq _sectors (car __sectors)))
       _sectors)))
  (:pz_control
   (&optional __pz_control)
   (if __pz_control (setq _pz_control __pz_control)) _pz_control)
  (:grid
   (&rest __grid)
   (if (keywordp (car __grid))
       (send* _grid __grid)
     (progn
       (if __grid (setq _grid (car __grid)))
       _grid)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _xp
    (* 4    (length _xp)) 4
    ;; float32[] _yp
    (* 4    (length _yp)) 4
    ;; float32[] _fip
    (* 4    (length _fip)) 4
    ;; float32[] _sp
    (* 4    (length _sp)) 4
    ;; agv_control_msgs/stringArray[] _sectors
    (apply #'+ (send-all _sectors :serialization-length)) 4
    ;; bool[] _pz_control
    (* 1    (length _pz_control)) 4
    ;; agv_control_msgs/gridData _grid
    (send _grid :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _xp
     (write-long (length _xp) s)
     (dotimes (i (length _xp))
       (sys::poke (elt _xp i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _yp
     (write-long (length _yp) s)
     (dotimes (i (length _yp))
       (sys::poke (elt _yp i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _fip
     (write-long (length _fip) s)
     (dotimes (i (length _fip))
       (sys::poke (elt _fip i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _sp
     (write-long (length _sp) s)
     (dotimes (i (length _sp))
       (sys::poke (elt _sp i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; agv_control_msgs/stringArray[] _sectors
     (write-long (length _sectors) s)
     (dolist (elem _sectors)
       (send elem :serialize s)
       )
     ;; bool[] _pz_control
     (write-long (length _pz_control) s)
     (dotimes (i (length _pz_control))
       (if (elt _pz_control i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; agv_control_msgs/gridData _grid
       (send _grid :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _xp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _xp (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _xp i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _yp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _yp (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _yp i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _fip
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fip (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _fip i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _sp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sp (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sp i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; agv_control_msgs/stringArray[] _sectors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sectors (let (r) (dotimes (i n) (push (instance agv_control_msgs::stringArray :init) r)) r))
     (dolist (elem- _sectors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool[] _pz_control
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pz_control (make-list n))
     (dotimes (i n)
     (setf (elt _pz_control i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; agv_control_msgs/gridData _grid
     (send _grid :deserialize buf ptr-) (incf ptr- (send _grid :serialization-length))
   ;;
   self)
  )

(setf (get agv_control_msgs::planData :md5sum-) "f3df86da21172dbd8bb9f18e14c1164e")
(setf (get agv_control_msgs::planData :datatype-) "agv_control_msgs/planData")
(setf (get agv_control_msgs::planData :definition-)
      "Header header

float32[] xp
float32[] yp
float32[] fip
float32[] sp

stringArray[] sectors
bool[] pz_control

gridData grid

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
MSG: agv_control_msgs/stringArray
string[] data

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



(provide :agv_control_msgs/planData "f3df86da21172dbd8bb9f18e14c1164e")


