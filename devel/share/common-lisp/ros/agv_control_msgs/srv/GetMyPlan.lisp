; Auto-generated. Do not edit!


(cl:in-package agv_control_msgs-srv)


;//! \htmlinclude GetMyPlan-request.msg.html

(cl:defclass <GetMyPlan-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (removing
    :reader removing
    :initarg :removing
    :type cl:boolean
    :initform cl:nil)
   (carobst
    :reader carobst
    :initarg :carobst
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (forbiddenCells
    :reader forbiddenCells
    :initarg :forbiddenCells
    :type agv_control_msgs-msg:gridData
    :initform (cl:make-instance 'agv_control_msgs-msg:gridData))
   (vehWithFailures
    :reader vehWithFailures
    :initarg :vehWithFailures
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
   (wrongX
    :reader wrongX
    :initarg :wrongX
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (wrongY
    :reader wrongY
    :initarg :wrongY
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass GetMyPlan-request (<GetMyPlan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMyPlan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMyPlan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_control_msgs-srv:<GetMyPlan-request> is deprecated: use agv_control_msgs-srv:GetMyPlan-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <GetMyPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-srv:start-val is deprecated.  Use agv_control_msgs-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <GetMyPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-srv:goal-val is deprecated.  Use agv_control_msgs-srv:goal instead.")
  (goal m))

(cl:ensure-generic-function 'removing-val :lambda-list '(m))
(cl:defmethod removing-val ((m <GetMyPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-srv:removing-val is deprecated.  Use agv_control_msgs-srv:removing instead.")
  (removing m))

(cl:ensure-generic-function 'carobst-val :lambda-list '(m))
(cl:defmethod carobst-val ((m <GetMyPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-srv:carobst-val is deprecated.  Use agv_control_msgs-srv:carobst instead.")
  (carobst m))

(cl:ensure-generic-function 'forbiddenCells-val :lambda-list '(m))
(cl:defmethod forbiddenCells-val ((m <GetMyPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-srv:forbiddenCells-val is deprecated.  Use agv_control_msgs-srv:forbiddenCells instead.")
  (forbiddenCells m))

(cl:ensure-generic-function 'vehWithFailures-val :lambda-list '(m))
(cl:defmethod vehWithFailures-val ((m <GetMyPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-srv:vehWithFailures-val is deprecated.  Use agv_control_msgs-srv:vehWithFailures instead.")
  (vehWithFailures m))

(cl:ensure-generic-function 'wrongX-val :lambda-list '(m))
(cl:defmethod wrongX-val ((m <GetMyPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-srv:wrongX-val is deprecated.  Use agv_control_msgs-srv:wrongX instead.")
  (wrongX m))

(cl:ensure-generic-function 'wrongY-val :lambda-list '(m))
(cl:defmethod wrongY-val ((m <GetMyPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-srv:wrongY-val is deprecated.  Use agv_control_msgs-srv:wrongY instead.")
  (wrongY m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMyPlan-request>) ostream)
  "Serializes a message object of type '<GetMyPlan-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'removing) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'carobst) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'forbiddenCells) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vehWithFailures))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vehWithFailures))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wrongX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'wrongX))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wrongY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'wrongY))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMyPlan-request>) istream)
  "Deserializes a message object of type '<GetMyPlan-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
    (cl:setf (cl:slot-value msg 'removing) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'carobst) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'forbiddenCells) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vehWithFailures) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vehWithFailures)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wrongX) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wrongX)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wrongY) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wrongY)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMyPlan-request>)))
  "Returns string type for a service object of type '<GetMyPlan-request>"
  "agv_control_msgs/GetMyPlanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMyPlan-request)))
  "Returns string type for a service object of type 'GetMyPlan-request"
  "agv_control_msgs/GetMyPlanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMyPlan-request>)))
  "Returns md5sum for a message object of type '<GetMyPlan-request>"
  "fafb7a48c36f2c02adeb6df2d676b49e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMyPlan-request)))
  "Returns md5sum for a message object of type 'GetMyPlan-request"
  "fafb7a48c36f2c02adeb6df2d676b49e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMyPlan-request>)))
  "Returns full string definition for message of type '<GetMyPlan-request>"
  (cl:format cl:nil "~%geometry_msgs/PoseStamped start~%~%~%geometry_msgs/PoseStamped goal~%~%bool removing~%~%~%geometry_msgs/PoseStamped carobst~%~%~%gridData forbiddenCells~%~%geometry_msgs/PoseStamped[] vehWithFailures~%~%int32[] wrongX~%int32[] wrongY~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: agv_control_msgs/gridData~%arrayData[] xGrid~%arrayData[] yGrid~%arrayData[] timeInGrid~%arrayData[] timeOutGrid~%~%================================================================================~%MSG: agv_control_msgs/arrayData~%float32[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMyPlan-request)))
  "Returns full string definition for message of type 'GetMyPlan-request"
  (cl:format cl:nil "~%geometry_msgs/PoseStamped start~%~%~%geometry_msgs/PoseStamped goal~%~%bool removing~%~%~%geometry_msgs/PoseStamped carobst~%~%~%gridData forbiddenCells~%~%geometry_msgs/PoseStamped[] vehWithFailures~%~%int32[] wrongX~%int32[] wrongY~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: agv_control_msgs/gridData~%arrayData[] xGrid~%arrayData[] yGrid~%arrayData[] timeInGrid~%arrayData[] timeOutGrid~%~%================================================================================~%MSG: agv_control_msgs/arrayData~%float32[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMyPlan-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'carobst))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'forbiddenCells))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vehWithFailures) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wrongX) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wrongY) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMyPlan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMyPlan-request
    (cl:cons ':start (start msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':removing (removing msg))
    (cl:cons ':carobst (carobst msg))
    (cl:cons ':forbiddenCells (forbiddenCells msg))
    (cl:cons ':vehWithFailures (vehWithFailures msg))
    (cl:cons ':wrongX (wrongX msg))
    (cl:cons ':wrongY (wrongY msg))
))
;//! \htmlinclude GetMyPlan-response.msg.html

(cl:defclass <GetMyPlan-response> (roslisp-msg-protocol:ros-message)
  ((plan
    :reader plan
    :initarg :plan
    :type agv_control_msgs-msg:planData
    :initform (cl:make-instance 'agv_control_msgs-msg:planData)))
)

(cl:defclass GetMyPlan-response (<GetMyPlan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMyPlan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMyPlan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_control_msgs-srv:<GetMyPlan-response> is deprecated: use agv_control_msgs-srv:GetMyPlan-response instead.")))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <GetMyPlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-srv:plan-val is deprecated.  Use agv_control_msgs-srv:plan instead.")
  (plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMyPlan-response>) ostream)
  "Serializes a message object of type '<GetMyPlan-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plan) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMyPlan-response>) istream)
  "Deserializes a message object of type '<GetMyPlan-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plan) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMyPlan-response>)))
  "Returns string type for a service object of type '<GetMyPlan-response>"
  "agv_control_msgs/GetMyPlanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMyPlan-response)))
  "Returns string type for a service object of type 'GetMyPlan-response"
  "agv_control_msgs/GetMyPlanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMyPlan-response>)))
  "Returns md5sum for a message object of type '<GetMyPlan-response>"
  "fafb7a48c36f2c02adeb6df2d676b49e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMyPlan-response)))
  "Returns md5sum for a message object of type 'GetMyPlan-response"
  "fafb7a48c36f2c02adeb6df2d676b49e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMyPlan-response>)))
  "Returns full string definition for message of type '<GetMyPlan-response>"
  (cl:format cl:nil "planData plan~%~%~%================================================================================~%MSG: agv_control_msgs/planData~%Header header~%~%float32[] xp~%float32[] yp~%float32[] fip~%float32[] sp~%~%stringArray[] sectors~%bool[] pz_control~%~%gridData grid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_control_msgs/stringArray~%string[] data~%~%================================================================================~%MSG: agv_control_msgs/gridData~%arrayData[] xGrid~%arrayData[] yGrid~%arrayData[] timeInGrid~%arrayData[] timeOutGrid~%~%================================================================================~%MSG: agv_control_msgs/arrayData~%float32[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMyPlan-response)))
  "Returns full string definition for message of type 'GetMyPlan-response"
  (cl:format cl:nil "planData plan~%~%~%================================================================================~%MSG: agv_control_msgs/planData~%Header header~%~%float32[] xp~%float32[] yp~%float32[] fip~%float32[] sp~%~%stringArray[] sectors~%bool[] pz_control~%~%gridData grid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_control_msgs/stringArray~%string[] data~%~%================================================================================~%MSG: agv_control_msgs/gridData~%arrayData[] xGrid~%arrayData[] yGrid~%arrayData[] timeInGrid~%arrayData[] timeOutGrid~%~%================================================================================~%MSG: agv_control_msgs/arrayData~%float32[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMyPlan-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMyPlan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMyPlan-response
    (cl:cons ':plan (plan msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMyPlan)))
  'GetMyPlan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMyPlan)))
  'GetMyPlan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMyPlan)))
  "Returns string type for a service object of type '<GetMyPlan>"
  "agv_control_msgs/GetMyPlan")