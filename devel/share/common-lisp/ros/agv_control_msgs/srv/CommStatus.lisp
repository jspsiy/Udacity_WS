; Auto-generated. Do not edit!


(cl:in-package agv_control_msgs-srv)


;//! \htmlinclude CommStatus-request.msg.html

(cl:defclass <CommStatus-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:string
    :initform ""))
)

(cl:defclass CommStatus-request (<CommStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_control_msgs-srv:<CommStatus-request> is deprecated: use agv_control_msgs-srv:CommStatus-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <CommStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-srv:action-val is deprecated.  Use agv_control_msgs-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommStatus-request>) ostream)
  "Serializes a message object of type '<CommStatus-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommStatus-request>) istream)
  "Deserializes a message object of type '<CommStatus-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommStatus-request>)))
  "Returns string type for a service object of type '<CommStatus-request>"
  "agv_control_msgs/CommStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommStatus-request)))
  "Returns string type for a service object of type 'CommStatus-request"
  "agv_control_msgs/CommStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommStatus-request>)))
  "Returns md5sum for a message object of type '<CommStatus-request>"
  "506f41635c0339e93c963a71da685d19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommStatus-request)))
  "Returns md5sum for a message object of type 'CommStatus-request"
  "506f41635c0339e93c963a71da685d19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommStatus-request>)))
  "Returns full string definition for message of type '<CommStatus-request>"
  (cl:format cl:nil "string action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommStatus-request)))
  "Returns full string definition for message of type 'CommStatus-request"
  (cl:format cl:nil "string action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommStatus-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CommStatus-request
    (cl:cons ':action (action msg))
))
;//! \htmlinclude CommStatus-response.msg.html

(cl:defclass <CommStatus-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CommStatus-response (<CommStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_control_msgs-srv:<CommStatus-response> is deprecated: use agv_control_msgs-srv:CommStatus-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <CommStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-srv:response-val is deprecated.  Use agv_control_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommStatus-response>) ostream)
  "Serializes a message object of type '<CommStatus-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommStatus-response>) istream)
  "Deserializes a message object of type '<CommStatus-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommStatus-response>)))
  "Returns string type for a service object of type '<CommStatus-response>"
  "agv_control_msgs/CommStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommStatus-response)))
  "Returns string type for a service object of type 'CommStatus-response"
  "agv_control_msgs/CommStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommStatus-response>)))
  "Returns md5sum for a message object of type '<CommStatus-response>"
  "506f41635c0339e93c963a71da685d19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommStatus-response)))
  "Returns md5sum for a message object of type 'CommStatus-response"
  "506f41635c0339e93c963a71da685d19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommStatus-response>)))
  "Returns full string definition for message of type '<CommStatus-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommStatus-response)))
  "Returns full string definition for message of type 'CommStatus-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommStatus-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CommStatus-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CommStatus)))
  'CommStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CommStatus)))
  'CommStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommStatus)))
  "Returns string type for a service object of type '<CommStatus>"
  "agv_control_msgs/CommStatus")