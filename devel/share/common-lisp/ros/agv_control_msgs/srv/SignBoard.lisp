; Auto-generated. Do not edit!


(cl:in-package agv_control_msgs-srv)


;//! \htmlinclude SignBoard-request.msg.html

(cl:defclass <SignBoard-request> (roslisp-msg-protocol:ros-message)
  ((vehicleName
    :reader vehicleName
    :initarg :vehicleName
    :type cl:string
    :initform ""))
)

(cl:defclass SignBoard-request (<SignBoard-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SignBoard-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SignBoard-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_control_msgs-srv:<SignBoard-request> is deprecated: use agv_control_msgs-srv:SignBoard-request instead.")))

(cl:ensure-generic-function 'vehicleName-val :lambda-list '(m))
(cl:defmethod vehicleName-val ((m <SignBoard-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-srv:vehicleName-val is deprecated.  Use agv_control_msgs-srv:vehicleName instead.")
  (vehicleName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SignBoard-request>) ostream)
  "Serializes a message object of type '<SignBoard-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'vehicleName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'vehicleName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SignBoard-request>) istream)
  "Deserializes a message object of type '<SignBoard-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vehicleName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'vehicleName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SignBoard-request>)))
  "Returns string type for a service object of type '<SignBoard-request>"
  "agv_control_msgs/SignBoardRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SignBoard-request)))
  "Returns string type for a service object of type 'SignBoard-request"
  "agv_control_msgs/SignBoardRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SignBoard-request>)))
  "Returns md5sum for a message object of type '<SignBoard-request>"
  "390ca359a372ba93439ce72b36acb943")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SignBoard-request)))
  "Returns md5sum for a message object of type 'SignBoard-request"
  "390ca359a372ba93439ce72b36acb943")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SignBoard-request>)))
  "Returns full string definition for message of type '<SignBoard-request>"
  (cl:format cl:nil "string vehicleName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SignBoard-request)))
  "Returns full string definition for message of type 'SignBoard-request"
  (cl:format cl:nil "string vehicleName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SignBoard-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'vehicleName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SignBoard-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SignBoard-request
    (cl:cons ':vehicleName (vehicleName msg))
))
;//! \htmlinclude SignBoard-response.msg.html

(cl:defclass <SignBoard-response> (roslisp-msg-protocol:ros-message)
  ((sb_data
    :reader sb_data
    :initarg :sb_data
    :type agv_control_msgs-msg:signBoardData
    :initform (cl:make-instance 'agv_control_msgs-msg:signBoardData)))
)

(cl:defclass SignBoard-response (<SignBoard-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SignBoard-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SignBoard-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_control_msgs-srv:<SignBoard-response> is deprecated: use agv_control_msgs-srv:SignBoard-response instead.")))

(cl:ensure-generic-function 'sb_data-val :lambda-list '(m))
(cl:defmethod sb_data-val ((m <SignBoard-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-srv:sb_data-val is deprecated.  Use agv_control_msgs-srv:sb_data instead.")
  (sb_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SignBoard-response>) ostream)
  "Serializes a message object of type '<SignBoard-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sb_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SignBoard-response>) istream)
  "Deserializes a message object of type '<SignBoard-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sb_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SignBoard-response>)))
  "Returns string type for a service object of type '<SignBoard-response>"
  "agv_control_msgs/SignBoardResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SignBoard-response)))
  "Returns string type for a service object of type 'SignBoard-response"
  "agv_control_msgs/SignBoardResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SignBoard-response>)))
  "Returns md5sum for a message object of type '<SignBoard-response>"
  "390ca359a372ba93439ce72b36acb943")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SignBoard-response)))
  "Returns md5sum for a message object of type 'SignBoard-response"
  "390ca359a372ba93439ce72b36acb943")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SignBoard-response>)))
  "Returns full string definition for message of type '<SignBoard-response>"
  (cl:format cl:nil "signBoardData sb_data~%~%~%================================================================================~%MSG: agv_control_msgs/signBoardData~%string vehicle_name~%int32 priority~%~%string curr_sector~%string[] allocated_sectors~%~%string goal_sector~%string goal_sec_state~%~%geometry_msgs/PoseStamped goal_pz~%string goal_pz_state~%bool pz_control~%~%geometry_msgs/PoseStamped allocated_node~%~%uint32[] required_segments~%uint32[] allocated_segments~%~%uint32 curr_pz_seq~%~%bool moving~%bool removing~%bool docking~%bool parking~%bool planning~%bool passing~%bool inFailure~%bool idle~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SignBoard-response)))
  "Returns full string definition for message of type 'SignBoard-response"
  (cl:format cl:nil "signBoardData sb_data~%~%~%================================================================================~%MSG: agv_control_msgs/signBoardData~%string vehicle_name~%int32 priority~%~%string curr_sector~%string[] allocated_sectors~%~%string goal_sector~%string goal_sec_state~%~%geometry_msgs/PoseStamped goal_pz~%string goal_pz_state~%bool pz_control~%~%geometry_msgs/PoseStamped allocated_node~%~%uint32[] required_segments~%uint32[] allocated_segments~%~%uint32 curr_pz_seq~%~%bool moving~%bool removing~%bool docking~%bool parking~%bool planning~%bool passing~%bool inFailure~%bool idle~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SignBoard-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sb_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SignBoard-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SignBoard-response
    (cl:cons ':sb_data (sb_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SignBoard)))
  'SignBoard-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SignBoard)))
  'SignBoard-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SignBoard)))
  "Returns string type for a service object of type '<SignBoard>"
  "agv_control_msgs/SignBoard")