;; Auto-generated. Do not edit!


(when (boundp 'agv_control_msgs::SignBoard)
  (if (not (find-package "AGV_CONTROL_MSGS"))
    (make-package "AGV_CONTROL_MSGS"))
  (shadow 'SignBoard (find-package "AGV_CONTROL_MSGS")))
(unless (find-package "AGV_CONTROL_MSGS::SIGNBOARD")
  (make-package "AGV_CONTROL_MSGS::SIGNBOARD"))
(unless (find-package "AGV_CONTROL_MSGS::SIGNBOARDREQUEST")
  (make-package "AGV_CONTROL_MSGS::SIGNBOARDREQUEST"))
(unless (find-package "AGV_CONTROL_MSGS::SIGNBOARDRESPONSE")
  (make-package "AGV_CONTROL_MSGS::SIGNBOARDRESPONSE"))

(in-package "ROS")





(defclass agv_control_msgs::SignBoardRequest
  :super ros::object
  :slots (_vehicleName ))

(defmethod agv_control_msgs::SignBoardRequest
  (:init
   (&key
    ((:vehicleName __vehicleName) "")
    )
   (send-super :init)
   (setq _vehicleName (string __vehicleName))
   self)
  (:vehicleName
   (&optional __vehicleName)
   (if __vehicleName (setq _vehicleName __vehicleName)) _vehicleName)
  (:serialization-length
   ()
   (+
    ;; string _vehicleName
    4 (length _vehicleName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _vehicleName
       (write-long (length _vehicleName) s) (princ _vehicleName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _vehicleName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _vehicleName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass agv_control_msgs::SignBoardResponse
  :super ros::object
  :slots (_sb_data ))

(defmethod agv_control_msgs::SignBoardResponse
  (:init
   (&key
    ((:sb_data __sb_data) (instance agv_control_msgs::signBoardData :init))
    )
   (send-super :init)
   (setq _sb_data __sb_data)
   self)
  (:sb_data
   (&rest __sb_data)
   (if (keywordp (car __sb_data))
       (send* _sb_data __sb_data)
     (progn
       (if __sb_data (setq _sb_data (car __sb_data)))
       _sb_data)))
  (:serialization-length
   ()
   (+
    ;; agv_control_msgs/signBoardData _sb_data
    (send _sb_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_control_msgs/signBoardData _sb_data
       (send _sb_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_control_msgs/signBoardData _sb_data
     (send _sb_data :deserialize buf ptr-) (incf ptr- (send _sb_data :serialization-length))
   ;;
   self)
  )

(defclass agv_control_msgs::SignBoard
  :super ros::object
  :slots ())

(setf (get agv_control_msgs::SignBoard :md5sum-) "390ca359a372ba93439ce72b36acb943")
(setf (get agv_control_msgs::SignBoard :datatype-) "agv_control_msgs/SignBoard")
(setf (get agv_control_msgs::SignBoard :request) agv_control_msgs::SignBoardRequest)
(setf (get agv_control_msgs::SignBoard :response) agv_control_msgs::SignBoardResponse)

(defmethod agv_control_msgs::SignBoardRequest
  (:response () (instance agv_control_msgs::SignBoardResponse :init)))

(setf (get agv_control_msgs::SignBoardRequest :md5sum-) "390ca359a372ba93439ce72b36acb943")
(setf (get agv_control_msgs::SignBoardRequest :datatype-) "agv_control_msgs/SignBoardRequest")
(setf (get agv_control_msgs::SignBoardRequest :definition-)
      "string vehicleName
---
signBoardData sb_data


================================================================================
MSG: agv_control_msgs/signBoardData
string vehicle_name
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

(setf (get agv_control_msgs::SignBoardResponse :md5sum-) "390ca359a372ba93439ce72b36acb943")
(setf (get agv_control_msgs::SignBoardResponse :datatype-) "agv_control_msgs/SignBoardResponse")
(setf (get agv_control_msgs::SignBoardResponse :definition-)
      "string vehicleName
---
signBoardData sb_data


================================================================================
MSG: agv_control_msgs/signBoardData
string vehicle_name
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



(provide :agv_control_msgs/SignBoard "390ca359a372ba93439ce72b36acb943")


