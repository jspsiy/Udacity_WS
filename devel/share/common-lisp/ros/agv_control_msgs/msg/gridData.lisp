; Auto-generated. Do not edit!


(cl:in-package agv_control_msgs-msg)


;//! \htmlinclude gridData.msg.html

(cl:defclass <gridData> (roslisp-msg-protocol:ros-message)
  ((xGrid
    :reader xGrid
    :initarg :xGrid
    :type (cl:vector agv_control_msgs-msg:arrayData)
   :initform (cl:make-array 0 :element-type 'agv_control_msgs-msg:arrayData :initial-element (cl:make-instance 'agv_control_msgs-msg:arrayData)))
   (yGrid
    :reader yGrid
    :initarg :yGrid
    :type (cl:vector agv_control_msgs-msg:arrayData)
   :initform (cl:make-array 0 :element-type 'agv_control_msgs-msg:arrayData :initial-element (cl:make-instance 'agv_control_msgs-msg:arrayData)))
   (timeInGrid
    :reader timeInGrid
    :initarg :timeInGrid
    :type (cl:vector agv_control_msgs-msg:arrayData)
   :initform (cl:make-array 0 :element-type 'agv_control_msgs-msg:arrayData :initial-element (cl:make-instance 'agv_control_msgs-msg:arrayData)))
   (timeOutGrid
    :reader timeOutGrid
    :initarg :timeOutGrid
    :type (cl:vector agv_control_msgs-msg:arrayData)
   :initform (cl:make-array 0 :element-type 'agv_control_msgs-msg:arrayData :initial-element (cl:make-instance 'agv_control_msgs-msg:arrayData))))
)

(cl:defclass gridData (<gridData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gridData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gridData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_control_msgs-msg:<gridData> is deprecated: use agv_control_msgs-msg:gridData instead.")))

(cl:ensure-generic-function 'xGrid-val :lambda-list '(m))
(cl:defmethod xGrid-val ((m <gridData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:xGrid-val is deprecated.  Use agv_control_msgs-msg:xGrid instead.")
  (xGrid m))

(cl:ensure-generic-function 'yGrid-val :lambda-list '(m))
(cl:defmethod yGrid-val ((m <gridData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:yGrid-val is deprecated.  Use agv_control_msgs-msg:yGrid instead.")
  (yGrid m))

(cl:ensure-generic-function 'timeInGrid-val :lambda-list '(m))
(cl:defmethod timeInGrid-val ((m <gridData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:timeInGrid-val is deprecated.  Use agv_control_msgs-msg:timeInGrid instead.")
  (timeInGrid m))

(cl:ensure-generic-function 'timeOutGrid-val :lambda-list '(m))
(cl:defmethod timeOutGrid-val ((m <gridData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:timeOutGrid-val is deprecated.  Use agv_control_msgs-msg:timeOutGrid instead.")
  (timeOutGrid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gridData>) ostream)
  "Serializes a message object of type '<gridData>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'xGrid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'xGrid))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'yGrid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'yGrid))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'timeInGrid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'timeInGrid))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'timeOutGrid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'timeOutGrid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gridData>) istream)
  "Deserializes a message object of type '<gridData>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'xGrid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'xGrid)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_control_msgs-msg:arrayData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'yGrid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'yGrid)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_control_msgs-msg:arrayData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'timeInGrid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'timeInGrid)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_control_msgs-msg:arrayData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'timeOutGrid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'timeOutGrid)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_control_msgs-msg:arrayData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gridData>)))
  "Returns string type for a message object of type '<gridData>"
  "agv_control_msgs/gridData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gridData)))
  "Returns string type for a message object of type 'gridData"
  "agv_control_msgs/gridData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gridData>)))
  "Returns md5sum for a message object of type '<gridData>"
  "75f2fe2eb528ad0443af47611bcbf66b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gridData)))
  "Returns md5sum for a message object of type 'gridData"
  "75f2fe2eb528ad0443af47611bcbf66b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gridData>)))
  "Returns full string definition for message of type '<gridData>"
  (cl:format cl:nil "arrayData[] xGrid~%arrayData[] yGrid~%arrayData[] timeInGrid~%arrayData[] timeOutGrid~%~%================================================================================~%MSG: agv_control_msgs/arrayData~%float32[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gridData)))
  "Returns full string definition for message of type 'gridData"
  (cl:format cl:nil "arrayData[] xGrid~%arrayData[] yGrid~%arrayData[] timeInGrid~%arrayData[] timeOutGrid~%~%================================================================================~%MSG: agv_control_msgs/arrayData~%float32[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gridData>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'xGrid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'yGrid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'timeInGrid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'timeOutGrid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gridData>))
  "Converts a ROS message object to a list"
  (cl:list 'gridData
    (cl:cons ':xGrid (xGrid msg))
    (cl:cons ':yGrid (yGrid msg))
    (cl:cons ':timeInGrid (timeInGrid msg))
    (cl:cons ':timeOutGrid (timeOutGrid msg))
))
