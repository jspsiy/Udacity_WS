;; Auto-generated. Do not edit!


(when (boundp 'agv_control_msgs::GetMyPlan)
  (if (not (find-package "AGV_CONTROL_MSGS"))
    (make-package "AGV_CONTROL_MSGS"))
  (shadow 'GetMyPlan (find-package "AGV_CONTROL_MSGS")))
(unless (find-package "AGV_CONTROL_MSGS::GETMYPLAN")
  (make-package "AGV_CONTROL_MSGS::GETMYPLAN"))
(unless (find-package "AGV_CONTROL_MSGS::GETMYPLANREQUEST")
  (make-package "AGV_CONTROL_MSGS::GETMYPLANREQUEST"))
(unless (find-package "AGV_CONTROL_MSGS::GETMYPLANRESPONSE")
  (make-package "AGV_CONTROL_MSGS::GETMYPLANRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass agv_control_msgs::GetMyPlanRequest
  :super ros::object
  :slots (_start _goal _removing _carobst _forbiddenCells _vehWithFailures _wrongX _wrongY ))

(defmethod agv_control_msgs::GetMyPlanRequest
  (:init
   (&key
    ((:start __start) (instance geometry_msgs::PoseStamped :init))
    ((:goal __goal) (instance geometry_msgs::PoseStamped :init))
    ((:removing __removing) nil)
    ((:carobst __carobst) (instance geometry_msgs::PoseStamped :init))
    ((:forbiddenCells __forbiddenCells) (instance agv_control_msgs::gridData :init))
    ((:vehWithFailures __vehWithFailures) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseStamped :init) r)) r))
    ((:wrongX __wrongX) (make-array 0 :initial-element 0 :element-type :integer))
    ((:wrongY __wrongY) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _start __start)
   (setq _goal __goal)
   (setq _removing __removing)
   (setq _carobst __carobst)
   (setq _forbiddenCells __forbiddenCells)
   (setq _vehWithFailures __vehWithFailures)
   (setq _wrongX __wrongX)
   (setq _wrongY __wrongY)
   self)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:removing
   (&optional __removing)
   (if __removing (setq _removing __removing)) _removing)
  (:carobst
   (&rest __carobst)
   (if (keywordp (car __carobst))
       (send* _carobst __carobst)
     (progn
       (if __carobst (setq _carobst (car __carobst)))
       _carobst)))
  (:forbiddenCells
   (&rest __forbiddenCells)
   (if (keywordp (car __forbiddenCells))
       (send* _forbiddenCells __forbiddenCells)
     (progn
       (if __forbiddenCells (setq _forbiddenCells (car __forbiddenCells)))
       _forbiddenCells)))
  (:vehWithFailures
   (&rest __vehWithFailures)
   (if (keywordp (car __vehWithFailures))
       (send* _vehWithFailures __vehWithFailures)
     (progn
       (if __vehWithFailures (setq _vehWithFailures (car __vehWithFailures)))
       _vehWithFailures)))
  (:wrongX
   (&optional __wrongX)
   (if __wrongX (setq _wrongX __wrongX)) _wrongX)
  (:wrongY
   (&optional __wrongY)
   (if __wrongY (setq _wrongY __wrongY)) _wrongY)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _start
    (send _start :serialization-length)
    ;; geometry_msgs/PoseStamped _goal
    (send _goal :serialization-length)
    ;; bool _removing
    1
    ;; geometry_msgs/PoseStamped _carobst
    (send _carobst :serialization-length)
    ;; agv_control_msgs/gridData _forbiddenCells
    (send _forbiddenCells :serialization-length)
    ;; geometry_msgs/PoseStamped[] _vehWithFailures
    (apply #'+ (send-all _vehWithFailures :serialization-length)) 4
    ;; int32[] _wrongX
    (* 4    (length _wrongX)) 4
    ;; int32[] _wrongY
    (* 4    (length _wrongY)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _start
       (send _start :serialize s)
     ;; geometry_msgs/PoseStamped _goal
       (send _goal :serialize s)
     ;; bool _removing
       (if _removing (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/PoseStamped _carobst
       (send _carobst :serialize s)
     ;; agv_control_msgs/gridData _forbiddenCells
       (send _forbiddenCells :serialize s)
     ;; geometry_msgs/PoseStamped[] _vehWithFailures
     (write-long (length _vehWithFailures) s)
     (dolist (elem _vehWithFailures)
       (send elem :serialize s)
       )
     ;; int32[] _wrongX
     (write-long (length _wrongX) s)
     (dotimes (i (length _wrongX))
       (write-long (elt _wrongX i) s)
       )
     ;; int32[] _wrongY
     (write-long (length _wrongY) s)
     (dotimes (i (length _wrongY))
       (write-long (elt _wrongY i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; geometry_msgs/PoseStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; bool _removing
     (setq _removing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/PoseStamped _carobst
     (send _carobst :deserialize buf ptr-) (incf ptr- (send _carobst :serialization-length))
   ;; agv_control_msgs/gridData _forbiddenCells
     (send _forbiddenCells :deserialize buf ptr-) (incf ptr- (send _forbiddenCells :serialization-length))
   ;; geometry_msgs/PoseStamped[] _vehWithFailures
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vehWithFailures (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _vehWithFailures)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32[] _wrongX
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wrongX (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _wrongX i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _wrongY
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wrongY (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _wrongY i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass agv_control_msgs::GetMyPlanResponse
  :super ros::object
  :slots (_plan ))

(defmethod agv_control_msgs::GetMyPlanResponse
  (:init
   (&key
    ((:plan __plan) (instance agv_control_msgs::planData :init))
    )
   (send-super :init)
   (setq _plan __plan)
   self)
  (:plan
   (&rest __plan)
   (if (keywordp (car __plan))
       (send* _plan __plan)
     (progn
       (if __plan (setq _plan (car __plan)))
       _plan)))
  (:serialization-length
   ()
   (+
    ;; agv_control_msgs/planData _plan
    (send _plan :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_control_msgs/planData _plan
       (send _plan :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_control_msgs/planData _plan
     (send _plan :deserialize buf ptr-) (incf ptr- (send _plan :serialization-length))
   ;;
   self)
  )

(defclass agv_control_msgs::GetMyPlan
  :super ros::object
  :slots ())

(setf (get agv_control_msgs::GetMyPlan :md5sum-) "fafb7a48c36f2c02adeb6df2d676b49e")
(setf (get agv_control_msgs::GetMyPlan :datatype-) "agv_control_msgs/GetMyPlan")
(setf (get agv_control_msgs::GetMyPlan :request) agv_control_msgs::GetMyPlanRequest)
(setf (get agv_control_msgs::GetMyPlan :response) agv_control_msgs::GetMyPlanResponse)

(defmethod agv_control_msgs::GetMyPlanRequest
  (:response () (instance agv_control_msgs::GetMyPlanResponse :init)))

(setf (get agv_control_msgs::GetMyPlanRequest :md5sum-) "fafb7a48c36f2c02adeb6df2d676b49e")
(setf (get agv_control_msgs::GetMyPlanRequest :datatype-) "agv_control_msgs/GetMyPlanRequest")
(setf (get agv_control_msgs::GetMyPlanRequest :definition-)
      "
geometry_msgs/PoseStamped start


geometry_msgs/PoseStamped goal

bool removing


geometry_msgs/PoseStamped carobst


gridData forbiddenCells

geometry_msgs/PoseStamped[] vehWithFailures

int32[] wrongX
int32[] wrongY

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

================================================================================
MSG: agv_control_msgs/gridData
arrayData[] xGrid
arrayData[] yGrid
arrayData[] timeInGrid
arrayData[] timeOutGrid

================================================================================
MSG: agv_control_msgs/arrayData
float32[] data
---
planData plan


================================================================================
MSG: agv_control_msgs/planData
Header header

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

(setf (get agv_control_msgs::GetMyPlanResponse :md5sum-) "fafb7a48c36f2c02adeb6df2d676b49e")
(setf (get agv_control_msgs::GetMyPlanResponse :datatype-) "agv_control_msgs/GetMyPlanResponse")
(setf (get agv_control_msgs::GetMyPlanResponse :definition-)
      "
geometry_msgs/PoseStamped start


geometry_msgs/PoseStamped goal

bool removing


geometry_msgs/PoseStamped carobst


gridData forbiddenCells

geometry_msgs/PoseStamped[] vehWithFailures

int32[] wrongX
int32[] wrongY

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

================================================================================
MSG: agv_control_msgs/gridData
arrayData[] xGrid
arrayData[] yGrid
arrayData[] timeInGrid
arrayData[] timeOutGrid

================================================================================
MSG: agv_control_msgs/arrayData
float32[] data
---
planData plan


================================================================================
MSG: agv_control_msgs/planData
Header header

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



(provide :agv_control_msgs/GetMyPlan "fafb7a48c36f2c02adeb6df2d676b49e")


