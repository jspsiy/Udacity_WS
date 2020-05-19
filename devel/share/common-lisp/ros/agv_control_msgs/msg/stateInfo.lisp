; Auto-generated. Do not edit!


(cl:in-package agv_control_msgs-msg)


;//! \htmlinclude stateInfo.msg.html

(cl:defclass <stateInfo> (roslisp-msg-protocol:ros-message)
  ((moving
    :reader moving
    :initarg :moving
    :type cl:integer
    :initform 0))
)

(cl:defclass stateInfo (<stateInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stateInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stateInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_control_msgs-msg:<stateInfo> is deprecated: use agv_control_msgs-msg:stateInfo instead.")))

(cl:ensure-generic-function 'moving-val :lambda-list '(m))
(cl:defmethod moving-val ((m <stateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:moving-val is deprecated.  Use agv_control_msgs-msg:moving instead.")
  (moving m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stateInfo>) ostream)
  "Serializes a message object of type '<stateInfo>"
  (cl:let* ((signed (cl:slot-value msg 'moving)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stateInfo>) istream)
  "Deserializes a message object of type '<stateInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'moving) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stateInfo>)))
  "Returns string type for a message object of type '<stateInfo>"
  "agv_control_msgs/stateInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stateInfo)))
  "Returns string type for a message object of type 'stateInfo"
  "agv_control_msgs/stateInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stateInfo>)))
  "Returns md5sum for a message object of type '<stateInfo>"
  "c62e955e9737e1c30eefd84dfe366ed8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stateInfo)))
  "Returns md5sum for a message object of type 'stateInfo"
  "c62e955e9737e1c30eefd84dfe366ed8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stateInfo>)))
  "Returns full string definition for message of type '<stateInfo>"
  (cl:format cl:nil "int32 moving~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stateInfo)))
  "Returns full string definition for message of type 'stateInfo"
  (cl:format cl:nil "int32 moving~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stateInfo>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stateInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'stateInfo
    (cl:cons ':moving (moving msg))
))
