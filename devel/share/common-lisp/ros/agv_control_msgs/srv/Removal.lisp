; Auto-generated. Do not edit!


(cl:in-package agv_control_msgs-srv)


;//! \htmlinclude Removal-request.msg.html

(cl:defclass <Removal-request> (roslisp-msg-protocol:ros-message)
  ((vehicleName
    :reader vehicleName
    :initarg :vehicleName
    :type cl:string
    :initform "")
   (priority
    :reader priority
    :initarg :priority
    :type cl:integer
    :initform 0)
   (req_pz_seq
    :reader req_pz_seq
    :initarg :req_pz_seq
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Removal-request (<Removal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Removal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Removal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_control_msgs-srv:<Removal-request> is deprecated: use agv_control_msgs-srv:Removal-request instead.")))

(cl:ensure-generic-function 'vehicleName-val :lambda-list '(m))
(cl:defmethod vehicleName-val ((m <Removal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-srv:vehicleName-val is deprecated.  Use agv_control_msgs-srv:vehicleName instead.")
  (vehicleName m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <Removal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-srv:priority-val is deprecated.  Use agv_control_msgs-srv:priority instead.")
  (priority m))

(cl:ensure-generic-function 'req_pz_seq-val :lambda-list '(m))
(cl:defmethod req_pz_seq-val ((m <Removal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-srv:req_pz_seq-val is deprecated.  Use agv_control_msgs-srv:req_pz_seq instead.")
  (req_pz_seq m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Removal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-srv:message-val is deprecated.  Use agv_control_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Removal-request>) ostream)
  "Serializes a message object of type '<Removal-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'vehicleName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'vehicleName))
  (cl:let* ((signed (cl:slot-value msg 'priority)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'req_pz_seq)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Removal-request>) istream)
  "Deserializes a message object of type '<Removal-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vehicleName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'vehicleName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'priority) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'req_pz_seq) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Removal-request>)))
  "Returns string type for a service object of type '<Removal-request>"
  "agv_control_msgs/RemovalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Removal-request)))
  "Returns string type for a service object of type 'Removal-request"
  "agv_control_msgs/RemovalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Removal-request>)))
  "Returns md5sum for a message object of type '<Removal-request>"
  "d5f813c7363f04e91a9f024e37136d87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Removal-request)))
  "Returns md5sum for a message object of type 'Removal-request"
  "d5f813c7363f04e91a9f024e37136d87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Removal-request>)))
  "Returns full string definition for message of type '<Removal-request>"
  (cl:format cl:nil "string vehicleName~%int32 priority~%int32 req_pz_seq~%~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Removal-request)))
  "Returns full string definition for message of type 'Removal-request"
  (cl:format cl:nil "string vehicleName~%int32 priority~%int32 req_pz_seq~%~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Removal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'vehicleName))
     4
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Removal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Removal-request
    (cl:cons ':vehicleName (vehicleName msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':req_pz_seq (req_pz_seq msg))
    (cl:cons ':message (message msg))
))
;//! \htmlinclude Removal-response.msg.html

(cl:defclass <Removal-response> (roslisp-msg-protocol:ros-message)
  ((removalStarted
    :reader removalStarted
    :initarg :removalStarted
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Removal-response (<Removal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Removal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Removal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_control_msgs-srv:<Removal-response> is deprecated: use agv_control_msgs-srv:Removal-response instead.")))

(cl:ensure-generic-function 'removalStarted-val :lambda-list '(m))
(cl:defmethod removalStarted-val ((m <Removal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-srv:removalStarted-val is deprecated.  Use agv_control_msgs-srv:removalStarted instead.")
  (removalStarted m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Removal-response>) ostream)
  "Serializes a message object of type '<Removal-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'removalStarted) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Removal-response>) istream)
  "Deserializes a message object of type '<Removal-response>"
    (cl:setf (cl:slot-value msg 'removalStarted) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Removal-response>)))
  "Returns string type for a service object of type '<Removal-response>"
  "agv_control_msgs/RemovalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Removal-response)))
  "Returns string type for a service object of type 'Removal-response"
  "agv_control_msgs/RemovalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Removal-response>)))
  "Returns md5sum for a message object of type '<Removal-response>"
  "d5f813c7363f04e91a9f024e37136d87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Removal-response)))
  "Returns md5sum for a message object of type 'Removal-response"
  "d5f813c7363f04e91a9f024e37136d87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Removal-response>)))
  "Returns full string definition for message of type '<Removal-response>"
  (cl:format cl:nil "bool removalStarted~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Removal-response)))
  "Returns full string definition for message of type 'Removal-response"
  (cl:format cl:nil "bool removalStarted~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Removal-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Removal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Removal-response
    (cl:cons ':removalStarted (removalStarted msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Removal)))
  'Removal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Removal)))
  'Removal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Removal)))
  "Returns string type for a service object of type '<Removal>"
  "agv_control_msgs/Removal")