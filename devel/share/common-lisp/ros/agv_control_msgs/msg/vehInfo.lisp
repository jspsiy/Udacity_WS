; Auto-generated. Do not edit!


(cl:in-package agv_control_msgs-msg)


;//! \htmlinclude vehInfo.msg.html

(cl:defclass <vehInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vehicleName
    :reader vehicleName
    :initarg :vehicleName
    :type cl:string
    :initform "")
   (grid
    :reader grid
    :initarg :grid
    :type agv_control_msgs-msg:gridData
    :initform (cl:make-instance 'agv_control_msgs-msg:gridData))
   (WrongRobots
    :reader WrongRobots
    :initarg :WrongRobots
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (xStop
    :reader xStop
    :initarg :xStop
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (yStop
    :reader yStop
    :initarg :yStop
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (currPathSeq
    :reader currPathSeq
    :initarg :currPathSeq
    :type cl:integer
    :initform 0)
   (currPathSeg
    :reader currPathSeg
    :initarg :currPathSeg
    :type cl:integer
    :initform 0))
)

(cl:defclass vehInfo (<vehInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vehInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vehInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_control_msgs-msg:<vehInfo> is deprecated: use agv_control_msgs-msg:vehInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <vehInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:header-val is deprecated.  Use agv_control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicleName-val :lambda-list '(m))
(cl:defmethod vehicleName-val ((m <vehInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:vehicleName-val is deprecated.  Use agv_control_msgs-msg:vehicleName instead.")
  (vehicleName m))

(cl:ensure-generic-function 'grid-val :lambda-list '(m))
(cl:defmethod grid-val ((m <vehInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:grid-val is deprecated.  Use agv_control_msgs-msg:grid instead.")
  (grid m))

(cl:ensure-generic-function 'WrongRobots-val :lambda-list '(m))
(cl:defmethod WrongRobots-val ((m <vehInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:WrongRobots-val is deprecated.  Use agv_control_msgs-msg:WrongRobots instead.")
  (WrongRobots m))

(cl:ensure-generic-function 'xStop-val :lambda-list '(m))
(cl:defmethod xStop-val ((m <vehInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:xStop-val is deprecated.  Use agv_control_msgs-msg:xStop instead.")
  (xStop m))

(cl:ensure-generic-function 'yStop-val :lambda-list '(m))
(cl:defmethod yStop-val ((m <vehInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:yStop-val is deprecated.  Use agv_control_msgs-msg:yStop instead.")
  (yStop m))

(cl:ensure-generic-function 'currPathSeq-val :lambda-list '(m))
(cl:defmethod currPathSeq-val ((m <vehInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:currPathSeq-val is deprecated.  Use agv_control_msgs-msg:currPathSeq instead.")
  (currPathSeq m))

(cl:ensure-generic-function 'currPathSeg-val :lambda-list '(m))
(cl:defmethod currPathSeg-val ((m <vehInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:currPathSeg-val is deprecated.  Use agv_control_msgs-msg:currPathSeg instead.")
  (currPathSeg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vehInfo>) ostream)
  "Serializes a message object of type '<vehInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'vehicleName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'vehicleName))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'grid) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'WrongRobots))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'WrongRobots))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'xStop))))
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
   (cl:slot-value msg 'xStop))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'yStop))))
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
   (cl:slot-value msg 'yStop))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'currPathSeq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'currPathSeq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'currPathSeq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'currPathSeq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'currPathSeg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'currPathSeg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'currPathSeg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'currPathSeg)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vehInfo>) istream)
  "Deserializes a message object of type '<vehInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vehicleName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'vehicleName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'grid) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'WrongRobots) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'WrongRobots)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'xStop) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'xStop)))
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
  (cl:setf (cl:slot-value msg 'yStop) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'yStop)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'currPathSeq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'currPathSeq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'currPathSeq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'currPathSeq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'currPathSeg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'currPathSeg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'currPathSeg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'currPathSeg)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vehInfo>)))
  "Returns string type for a message object of type '<vehInfo>"
  "agv_control_msgs/vehInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vehInfo)))
  "Returns string type for a message object of type 'vehInfo"
  "agv_control_msgs/vehInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vehInfo>)))
  "Returns md5sum for a message object of type '<vehInfo>"
  "c6e9ae8dd848817a5cdb6e0944422574")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vehInfo)))
  "Returns md5sum for a message object of type 'vehInfo"
  "c6e9ae8dd848817a5cdb6e0944422574")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vehInfo>)))
  "Returns full string definition for message of type '<vehInfo>"
  (cl:format cl:nil "Header header~%~%string vehicleName~%~%gridData grid~%~%string[] WrongRobots~%~%int32[] xStop~%int32[] yStop~%~%uint32 currPathSeq~%uint32 currPathSeg~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_control_msgs/gridData~%arrayData[] xGrid~%arrayData[] yGrid~%arrayData[] timeInGrid~%arrayData[] timeOutGrid~%~%================================================================================~%MSG: agv_control_msgs/arrayData~%float32[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vehInfo)))
  "Returns full string definition for message of type 'vehInfo"
  (cl:format cl:nil "Header header~%~%string vehicleName~%~%gridData grid~%~%string[] WrongRobots~%~%int32[] xStop~%int32[] yStop~%~%uint32 currPathSeq~%uint32 currPathSeg~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_control_msgs/gridData~%arrayData[] xGrid~%arrayData[] yGrid~%arrayData[] timeInGrid~%arrayData[] timeOutGrid~%~%================================================================================~%MSG: agv_control_msgs/arrayData~%float32[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vehInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'vehicleName))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'grid))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'WrongRobots) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'xStop) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'yStop) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vehInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'vehInfo
    (cl:cons ':header (header msg))
    (cl:cons ':vehicleName (vehicleName msg))
    (cl:cons ':grid (grid msg))
    (cl:cons ':WrongRobots (WrongRobots msg))
    (cl:cons ':xStop (xStop msg))
    (cl:cons ':yStop (yStop msg))
    (cl:cons ':currPathSeq (currPathSeq msg))
    (cl:cons ':currPathSeg (currPathSeg msg))
))
