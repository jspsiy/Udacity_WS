; Auto-generated. Do not edit!


(cl:in-package agv_control_msgs-msg)


;//! \htmlinclude signBoardData.msg.html

(cl:defclass <signBoardData> (roslisp-msg-protocol:ros-message)
  ((vehicle_name
    :reader vehicle_name
    :initarg :vehicle_name
    :type cl:string
    :initform "")
   (priority
    :reader priority
    :initarg :priority
    :type cl:integer
    :initform 0)
   (curr_sector
    :reader curr_sector
    :initarg :curr_sector
    :type cl:string
    :initform "")
   (allocated_sectors
    :reader allocated_sectors
    :initarg :allocated_sectors
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (goal_sector
    :reader goal_sector
    :initarg :goal_sector
    :type cl:string
    :initform "")
   (goal_sec_state
    :reader goal_sec_state
    :initarg :goal_sec_state
    :type cl:string
    :initform "")
   (goal_pz
    :reader goal_pz
    :initarg :goal_pz
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal_pz_state
    :reader goal_pz_state
    :initarg :goal_pz_state
    :type cl:string
    :initform "")
   (pz_control
    :reader pz_control
    :initarg :pz_control
    :type cl:boolean
    :initform cl:nil)
   (allocated_node
    :reader allocated_node
    :initarg :allocated_node
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (required_segments
    :reader required_segments
    :initarg :required_segments
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (allocated_segments
    :reader allocated_segments
    :initarg :allocated_segments
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (curr_pz_seq
    :reader curr_pz_seq
    :initarg :curr_pz_seq
    :type cl:integer
    :initform 0)
   (moving
    :reader moving
    :initarg :moving
    :type cl:boolean
    :initform cl:nil)
   (removing
    :reader removing
    :initarg :removing
    :type cl:boolean
    :initform cl:nil)
   (docking
    :reader docking
    :initarg :docking
    :type cl:boolean
    :initform cl:nil)
   (parking
    :reader parking
    :initarg :parking
    :type cl:boolean
    :initform cl:nil)
   (planning
    :reader planning
    :initarg :planning
    :type cl:boolean
    :initform cl:nil)
   (passing
    :reader passing
    :initarg :passing
    :type cl:boolean
    :initform cl:nil)
   (inFailure
    :reader inFailure
    :initarg :inFailure
    :type cl:boolean
    :initform cl:nil)
   (idle
    :reader idle
    :initarg :idle
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass signBoardData (<signBoardData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <signBoardData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'signBoardData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_control_msgs-msg:<signBoardData> is deprecated: use agv_control_msgs-msg:signBoardData instead.")))

(cl:ensure-generic-function 'vehicle_name-val :lambda-list '(m))
(cl:defmethod vehicle_name-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:vehicle_name-val is deprecated.  Use agv_control_msgs-msg:vehicle_name instead.")
  (vehicle_name m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:priority-val is deprecated.  Use agv_control_msgs-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'curr_sector-val :lambda-list '(m))
(cl:defmethod curr_sector-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:curr_sector-val is deprecated.  Use agv_control_msgs-msg:curr_sector instead.")
  (curr_sector m))

(cl:ensure-generic-function 'allocated_sectors-val :lambda-list '(m))
(cl:defmethod allocated_sectors-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:allocated_sectors-val is deprecated.  Use agv_control_msgs-msg:allocated_sectors instead.")
  (allocated_sectors m))

(cl:ensure-generic-function 'goal_sector-val :lambda-list '(m))
(cl:defmethod goal_sector-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:goal_sector-val is deprecated.  Use agv_control_msgs-msg:goal_sector instead.")
  (goal_sector m))

(cl:ensure-generic-function 'goal_sec_state-val :lambda-list '(m))
(cl:defmethod goal_sec_state-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:goal_sec_state-val is deprecated.  Use agv_control_msgs-msg:goal_sec_state instead.")
  (goal_sec_state m))

(cl:ensure-generic-function 'goal_pz-val :lambda-list '(m))
(cl:defmethod goal_pz-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:goal_pz-val is deprecated.  Use agv_control_msgs-msg:goal_pz instead.")
  (goal_pz m))

(cl:ensure-generic-function 'goal_pz_state-val :lambda-list '(m))
(cl:defmethod goal_pz_state-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:goal_pz_state-val is deprecated.  Use agv_control_msgs-msg:goal_pz_state instead.")
  (goal_pz_state m))

(cl:ensure-generic-function 'pz_control-val :lambda-list '(m))
(cl:defmethod pz_control-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:pz_control-val is deprecated.  Use agv_control_msgs-msg:pz_control instead.")
  (pz_control m))

(cl:ensure-generic-function 'allocated_node-val :lambda-list '(m))
(cl:defmethod allocated_node-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:allocated_node-val is deprecated.  Use agv_control_msgs-msg:allocated_node instead.")
  (allocated_node m))

(cl:ensure-generic-function 'required_segments-val :lambda-list '(m))
(cl:defmethod required_segments-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:required_segments-val is deprecated.  Use agv_control_msgs-msg:required_segments instead.")
  (required_segments m))

(cl:ensure-generic-function 'allocated_segments-val :lambda-list '(m))
(cl:defmethod allocated_segments-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:allocated_segments-val is deprecated.  Use agv_control_msgs-msg:allocated_segments instead.")
  (allocated_segments m))

(cl:ensure-generic-function 'curr_pz_seq-val :lambda-list '(m))
(cl:defmethod curr_pz_seq-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:curr_pz_seq-val is deprecated.  Use agv_control_msgs-msg:curr_pz_seq instead.")
  (curr_pz_seq m))

(cl:ensure-generic-function 'moving-val :lambda-list '(m))
(cl:defmethod moving-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:moving-val is deprecated.  Use agv_control_msgs-msg:moving instead.")
  (moving m))

(cl:ensure-generic-function 'removing-val :lambda-list '(m))
(cl:defmethod removing-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:removing-val is deprecated.  Use agv_control_msgs-msg:removing instead.")
  (removing m))

(cl:ensure-generic-function 'docking-val :lambda-list '(m))
(cl:defmethod docking-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:docking-val is deprecated.  Use agv_control_msgs-msg:docking instead.")
  (docking m))

(cl:ensure-generic-function 'parking-val :lambda-list '(m))
(cl:defmethod parking-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:parking-val is deprecated.  Use agv_control_msgs-msg:parking instead.")
  (parking m))

(cl:ensure-generic-function 'planning-val :lambda-list '(m))
(cl:defmethod planning-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:planning-val is deprecated.  Use agv_control_msgs-msg:planning instead.")
  (planning m))

(cl:ensure-generic-function 'passing-val :lambda-list '(m))
(cl:defmethod passing-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:passing-val is deprecated.  Use agv_control_msgs-msg:passing instead.")
  (passing m))

(cl:ensure-generic-function 'inFailure-val :lambda-list '(m))
(cl:defmethod inFailure-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:inFailure-val is deprecated.  Use agv_control_msgs-msg:inFailure instead.")
  (inFailure m))

(cl:ensure-generic-function 'idle-val :lambda-list '(m))
(cl:defmethod idle-val ((m <signBoardData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_control_msgs-msg:idle-val is deprecated.  Use agv_control_msgs-msg:idle instead.")
  (idle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <signBoardData>) ostream)
  "Serializes a message object of type '<signBoardData>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'vehicle_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'vehicle_name))
  (cl:let* ((signed (cl:slot-value msg 'priority)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'curr_sector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'curr_sector))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'allocated_sectors))))
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
   (cl:slot-value msg 'allocated_sectors))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goal_sector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goal_sector))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goal_sec_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goal_sec_state))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_pz) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goal_pz_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goal_pz_state))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pz_control) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'allocated_node) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'required_segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'required_segments))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'allocated_segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'allocated_segments))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'curr_pz_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'curr_pz_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'curr_pz_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'curr_pz_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'moving) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'removing) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'docking) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'parking) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'planning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'passing) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'inFailure) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'idle) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <signBoardData>) istream)
  "Deserializes a message object of type '<signBoardData>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vehicle_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'vehicle_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'priority) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'curr_sector) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'curr_sector) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'allocated_sectors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'allocated_sectors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_sector) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goal_sector) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_sec_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goal_sec_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_pz) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_pz_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goal_pz_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'pz_control) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'allocated_node) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'required_segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'required_segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'allocated_segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'allocated_segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'curr_pz_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'curr_pz_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'curr_pz_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'curr_pz_seq)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'moving) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'removing) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'docking) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'parking) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'planning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'passing) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'inFailure) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'idle) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<signBoardData>)))
  "Returns string type for a message object of type '<signBoardData>"
  "agv_control_msgs/signBoardData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'signBoardData)))
  "Returns string type for a message object of type 'signBoardData"
  "agv_control_msgs/signBoardData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<signBoardData>)))
  "Returns md5sum for a message object of type '<signBoardData>"
  "c16a3cd6d0fc51cf9c04c727333b0e8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'signBoardData)))
  "Returns md5sum for a message object of type 'signBoardData"
  "c16a3cd6d0fc51cf9c04c727333b0e8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<signBoardData>)))
  "Returns full string definition for message of type '<signBoardData>"
  (cl:format cl:nil "string vehicle_name~%int32 priority~%~%string curr_sector~%string[] allocated_sectors~%~%string goal_sector~%string goal_sec_state~%~%geometry_msgs/PoseStamped goal_pz~%string goal_pz_state~%bool pz_control~%~%geometry_msgs/PoseStamped allocated_node~%~%uint32[] required_segments~%uint32[] allocated_segments~%~%uint32 curr_pz_seq~%~%bool moving~%bool removing~%bool docking~%bool parking~%bool planning~%bool passing~%bool inFailure~%bool idle~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'signBoardData)))
  "Returns full string definition for message of type 'signBoardData"
  (cl:format cl:nil "string vehicle_name~%int32 priority~%~%string curr_sector~%string[] allocated_sectors~%~%string goal_sector~%string goal_sec_state~%~%geometry_msgs/PoseStamped goal_pz~%string goal_pz_state~%bool pz_control~%~%geometry_msgs/PoseStamped allocated_node~%~%uint32[] required_segments~%uint32[] allocated_segments~%~%uint32 curr_pz_seq~%~%bool moving~%bool removing~%bool docking~%bool parking~%bool planning~%bool passing~%bool inFailure~%bool idle~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <signBoardData>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'vehicle_name))
     4
     4 (cl:length (cl:slot-value msg 'curr_sector))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'allocated_sectors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'goal_sector))
     4 (cl:length (cl:slot-value msg 'goal_sec_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_pz))
     4 (cl:length (cl:slot-value msg 'goal_pz_state))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'allocated_node))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'required_segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'allocated_segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <signBoardData>))
  "Converts a ROS message object to a list"
  (cl:list 'signBoardData
    (cl:cons ':vehicle_name (vehicle_name msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':curr_sector (curr_sector msg))
    (cl:cons ':allocated_sectors (allocated_sectors msg))
    (cl:cons ':goal_sector (goal_sector msg))
    (cl:cons ':goal_sec_state (goal_sec_state msg))
    (cl:cons ':goal_pz (goal_pz msg))
    (cl:cons ':goal_pz_state (goal_pz_state msg))
    (cl:cons ':pz_control (pz_control msg))
    (cl:cons ':allocated_node (allocated_node msg))
    (cl:cons ':required_segments (required_segments msg))
    (cl:cons ':allocated_segments (allocated_segments msg))
    (cl:cons ':curr_pz_seq (curr_pz_seq msg))
    (cl:cons ':moving (moving msg))
    (cl:cons ':removing (removing msg))
    (cl:cons ':docking (docking msg))
    (cl:cons ':parking (parking msg))
    (cl:cons ':planning (planning msg))
    (cl:cons ':passing (passing msg))
    (cl:cons ':inFailure (inFailure msg))
    (cl:cons ':idle (idle msg))
))
