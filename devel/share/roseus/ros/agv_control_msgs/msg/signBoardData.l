;; Auto-generated. Do not edit!


(when (boundp 'agv_control_msgs::signBoardData)
  (if (not (find-package "AGV_CONTROL_MSGS"))
    (make-package "AGV_CONTROL_MSGS"))
  (shadow 'signBoardData (find-package "AGV_CONTROL_MSGS")))
(unless (find-package "AGV_CONTROL_MSGS::SIGNBOARDDATA")
  (make-package "AGV_CONTROL_MSGS::SIGNBOARDDATA"))

(in-package "ROS")
;;//! \htmlinclude signBoardData.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass agv_control_msgs::signBoardData
  :super ros::object
  :slots (_vehicle_name _priority _curr_sector _allocated_sectors _goal_sector _goal_sec_state _goal_pz _goal_pz_state _pz_control _allocated_node _required_segments _allocated_segments _curr_pz_seq _moving _removing _docking _parking _planning _passing _inFailure _idle ))

(defmethod agv_control_msgs::signBoardData
  (:init
   (&key
    ((:vehicle_name __vehicle_name) "")
    ((:priority __priority) 0)
    ((:curr_sector __curr_sector) "")
    ((:allocated_sectors __allocated_sectors) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:goal_sector __goal_sector) "")
    ((:goal_sec_state __goal_sec_state) "")
    ((:goal_pz __goal_pz) (instance geometry_msgs::PoseStamped :init))
    ((:goal_pz_state __goal_pz_state) "")
    ((:pz_control __pz_control) nil)
    ((:allocated_node __allocated_node) (instance geometry_msgs::PoseStamped :init))
    ((:required_segments __required_segments) (make-array 0 :initial-element 0 :element-type :integer))
    ((:allocated_segments __allocated_segments) (make-array 0 :initial-element 0 :element-type :integer))
    ((:curr_pz_seq __curr_pz_seq) 0)
    ((:moving __moving) nil)
    ((:removing __removing) nil)
    ((:docking __docking) nil)
    ((:parking __parking) nil)
    ((:planning __planning) nil)
    ((:passing __passing) nil)
    ((:inFailure __inFailure) nil)
    ((:idle __idle) nil)
    )
   (send-super :init)
   (setq _vehicle_name (string __vehicle_name))
   (setq _priority (round __priority))
   (setq _curr_sector (string __curr_sector))
   (setq _allocated_sectors __allocated_sectors)
   (setq _goal_sector (string __goal_sector))
   (setq _goal_sec_state (string __goal_sec_state))
   (setq _goal_pz __goal_pz)
   (setq _goal_pz_state (string __goal_pz_state))
   (setq _pz_control __pz_control)
   (setq _allocated_node __allocated_node)
   (setq _required_segments __required_segments)
   (setq _allocated_segments __allocated_segments)
   (setq _curr_pz_seq (round __curr_pz_seq))
   (setq _moving __moving)
   (setq _removing __removing)
   (setq _docking __docking)
   (setq _parking __parking)
   (setq _planning __planning)
   (setq _passing __passing)
   (setq _inFailure __inFailure)
   (setq _idle __idle)
   self)
  (:vehicle_name
   (&optional __vehicle_name)
   (if __vehicle_name (setq _vehicle_name __vehicle_name)) _vehicle_name)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:curr_sector
   (&optional __curr_sector)
   (if __curr_sector (setq _curr_sector __curr_sector)) _curr_sector)
  (:allocated_sectors
   (&optional __allocated_sectors)
   (if __allocated_sectors (setq _allocated_sectors __allocated_sectors)) _allocated_sectors)
  (:goal_sector
   (&optional __goal_sector)
   (if __goal_sector (setq _goal_sector __goal_sector)) _goal_sector)
  (:goal_sec_state
   (&optional __goal_sec_state)
   (if __goal_sec_state (setq _goal_sec_state __goal_sec_state)) _goal_sec_state)
  (:goal_pz
   (&rest __goal_pz)
   (if (keywordp (car __goal_pz))
       (send* _goal_pz __goal_pz)
     (progn
       (if __goal_pz (setq _goal_pz (car __goal_pz)))
       _goal_pz)))
  (:goal_pz_state
   (&optional __goal_pz_state)
   (if __goal_pz_state (setq _goal_pz_state __goal_pz_state)) _goal_pz_state)
  (:pz_control
   (&optional __pz_control)
   (if __pz_control (setq _pz_control __pz_control)) _pz_control)
  (:allocated_node
   (&rest __allocated_node)
   (if (keywordp (car __allocated_node))
       (send* _allocated_node __allocated_node)
     (progn
       (if __allocated_node (setq _allocated_node (car __allocated_node)))
       _allocated_node)))
  (:required_segments
   (&optional __required_segments)
   (if __required_segments (setq _required_segments __required_segments)) _required_segments)
  (:allocated_segments
   (&optional __allocated_segments)
   (if __allocated_segments (setq _allocated_segments __allocated_segments)) _allocated_segments)
  (:curr_pz_seq
   (&optional __curr_pz_seq)
   (if __curr_pz_seq (setq _curr_pz_seq __curr_pz_seq)) _curr_pz_seq)
  (:moving
   (&optional __moving)
   (if __moving (setq _moving __moving)) _moving)
  (:removing
   (&optional __removing)
   (if __removing (setq _removing __removing)) _removing)
  (:docking
   (&optional __docking)
   (if __docking (setq _docking __docking)) _docking)
  (:parking
   (&optional __parking)
   (if __parking (setq _parking __parking)) _parking)
  (:planning
   (&optional __planning)
   (if __planning (setq _planning __planning)) _planning)
  (:passing
   (&optional __passing)
   (if __passing (setq _passing __passing)) _passing)
  (:inFailure
   (&optional __inFailure)
   (if __inFailure (setq _inFailure __inFailure)) _inFailure)
  (:idle
   (&optional __idle)
   (if __idle (setq _idle __idle)) _idle)
  (:serialization-length
   ()
   (+
    ;; string _vehicle_name
    4 (length _vehicle_name)
    ;; int32 _priority
    4
    ;; string _curr_sector
    4 (length _curr_sector)
    ;; string[] _allocated_sectors
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _allocated_sectors)) 4
    ;; string _goal_sector
    4 (length _goal_sector)
    ;; string _goal_sec_state
    4 (length _goal_sec_state)
    ;; geometry_msgs/PoseStamped _goal_pz
    (send _goal_pz :serialization-length)
    ;; string _goal_pz_state
    4 (length _goal_pz_state)
    ;; bool _pz_control
    1
    ;; geometry_msgs/PoseStamped _allocated_node
    (send _allocated_node :serialization-length)
    ;; uint32[] _required_segments
    (* 4    (length _required_segments)) 4
    ;; uint32[] _allocated_segments
    (* 4    (length _allocated_segments)) 4
    ;; uint32 _curr_pz_seq
    4
    ;; bool _moving
    1
    ;; bool _removing
    1
    ;; bool _docking
    1
    ;; bool _parking
    1
    ;; bool _planning
    1
    ;; bool _passing
    1
    ;; bool _inFailure
    1
    ;; bool _idle
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _vehicle_name
       (write-long (length _vehicle_name) s) (princ _vehicle_name s)
     ;; int32 _priority
       (write-long _priority s)
     ;; string _curr_sector
       (write-long (length _curr_sector) s) (princ _curr_sector s)
     ;; string[] _allocated_sectors
     (write-long (length _allocated_sectors) s)
     (dolist (elem _allocated_sectors)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _goal_sector
       (write-long (length _goal_sector) s) (princ _goal_sector s)
     ;; string _goal_sec_state
       (write-long (length _goal_sec_state) s) (princ _goal_sec_state s)
     ;; geometry_msgs/PoseStamped _goal_pz
       (send _goal_pz :serialize s)
     ;; string _goal_pz_state
       (write-long (length _goal_pz_state) s) (princ _goal_pz_state s)
     ;; bool _pz_control
       (if _pz_control (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/PoseStamped _allocated_node
       (send _allocated_node :serialize s)
     ;; uint32[] _required_segments
     (write-long (length _required_segments) s)
     (dotimes (i (length _required_segments))
       (write-long (elt _required_segments i) s)
       )
     ;; uint32[] _allocated_segments
     (write-long (length _allocated_segments) s)
     (dotimes (i (length _allocated_segments))
       (write-long (elt _allocated_segments i) s)
       )
     ;; uint32 _curr_pz_seq
       (write-long _curr_pz_seq s)
     ;; bool _moving
       (if _moving (write-byte -1 s) (write-byte 0 s))
     ;; bool _removing
       (if _removing (write-byte -1 s) (write-byte 0 s))
     ;; bool _docking
       (if _docking (write-byte -1 s) (write-byte 0 s))
     ;; bool _parking
       (if _parking (write-byte -1 s) (write-byte 0 s))
     ;; bool _planning
       (if _planning (write-byte -1 s) (write-byte 0 s))
     ;; bool _passing
       (if _passing (write-byte -1 s) (write-byte 0 s))
     ;; bool _inFailure
       (if _inFailure (write-byte -1 s) (write-byte 0 s))
     ;; bool _idle
       (if _idle (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _vehicle_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _vehicle_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _priority
     (setq _priority (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _curr_sector
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _curr_sector (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _allocated_sectors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _allocated_sectors (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _allocated_sectors i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _goal_sector
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal_sector (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _goal_sec_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal_sec_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _goal_pz
     (send _goal_pz :deserialize buf ptr-) (incf ptr- (send _goal_pz :serialization-length))
   ;; string _goal_pz_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal_pz_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _pz_control
     (setq _pz_control (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/PoseStamped _allocated_node
     (send _allocated_node :deserialize buf ptr-) (incf ptr- (send _allocated_node :serialization-length))
   ;; uint32[] _required_segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _required_segments (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _required_segments i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _allocated_segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _allocated_segments (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _allocated_segments i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32 _curr_pz_seq
     (setq _curr_pz_seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _moving
     (setq _moving (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _removing
     (setq _removing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _docking
     (setq _docking (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _parking
     (setq _parking (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _planning
     (setq _planning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _passing
     (setq _passing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _inFailure
     (setq _inFailure (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _idle
     (setq _idle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_control_msgs::signBoardData :md5sum-) "c16a3cd6d0fc51cf9c04c727333b0e8c")
(setf (get agv_control_msgs::signBoardData :datatype-) "agv_control_msgs/signBoardData")
(setf (get agv_control_msgs::signBoardData :definition-)
      "string vehicle_name
int32 priority

string curr_sector
string[] allocated_sectors

string goal_sector
string goal_sec_state

geometry_msgs/PoseStamped goal_pz
string goal_pz_state
bool pz_control

geometry_msgs/PoseStamped allocated_node

uint32[] required_segments
uint32[] allocated_segments

uint32 curr_pz_seq

bool moving
bool removing
bool docking
bool parking
bool planning
bool passing
bool inFailure
bool idle

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :agv_control_msgs/signBoardData "c16a3cd6d0fc51cf9c04c727333b0e8c")


