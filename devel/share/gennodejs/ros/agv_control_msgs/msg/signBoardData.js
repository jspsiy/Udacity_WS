// Auto-generated. Do not edit!

// (in-package agv_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class signBoardData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vehicle_name = null;
      this.priority = null;
      this.curr_sector = null;
      this.allocated_sectors = null;
      this.goal_sector = null;
      this.goal_sec_state = null;
      this.goal_pz = null;
      this.goal_pz_state = null;
      this.pz_control = null;
      this.allocated_node = null;
      this.required_segments = null;
      this.allocated_segments = null;
      this.curr_pz_seq = null;
      this.moving = null;
      this.removing = null;
      this.docking = null;
      this.parking = null;
      this.planning = null;
      this.passing = null;
      this.inFailure = null;
      this.idle = null;
    }
    else {
      if (initObj.hasOwnProperty('vehicle_name')) {
        this.vehicle_name = initObj.vehicle_name
      }
      else {
        this.vehicle_name = '';
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
      if (initObj.hasOwnProperty('curr_sector')) {
        this.curr_sector = initObj.curr_sector
      }
      else {
        this.curr_sector = '';
      }
      if (initObj.hasOwnProperty('allocated_sectors')) {
        this.allocated_sectors = initObj.allocated_sectors
      }
      else {
        this.allocated_sectors = [];
      }
      if (initObj.hasOwnProperty('goal_sector')) {
        this.goal_sector = initObj.goal_sector
      }
      else {
        this.goal_sector = '';
      }
      if (initObj.hasOwnProperty('goal_sec_state')) {
        this.goal_sec_state = initObj.goal_sec_state
      }
      else {
        this.goal_sec_state = '';
      }
      if (initObj.hasOwnProperty('goal_pz')) {
        this.goal_pz = initObj.goal_pz
      }
      else {
        this.goal_pz = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('goal_pz_state')) {
        this.goal_pz_state = initObj.goal_pz_state
      }
      else {
        this.goal_pz_state = '';
      }
      if (initObj.hasOwnProperty('pz_control')) {
        this.pz_control = initObj.pz_control
      }
      else {
        this.pz_control = false;
      }
      if (initObj.hasOwnProperty('allocated_node')) {
        this.allocated_node = initObj.allocated_node
      }
      else {
        this.allocated_node = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('required_segments')) {
        this.required_segments = initObj.required_segments
      }
      else {
        this.required_segments = [];
      }
      if (initObj.hasOwnProperty('allocated_segments')) {
        this.allocated_segments = initObj.allocated_segments
      }
      else {
        this.allocated_segments = [];
      }
      if (initObj.hasOwnProperty('curr_pz_seq')) {
        this.curr_pz_seq = initObj.curr_pz_seq
      }
      else {
        this.curr_pz_seq = 0;
      }
      if (initObj.hasOwnProperty('moving')) {
        this.moving = initObj.moving
      }
      else {
        this.moving = false;
      }
      if (initObj.hasOwnProperty('removing')) {
        this.removing = initObj.removing
      }
      else {
        this.removing = false;
      }
      if (initObj.hasOwnProperty('docking')) {
        this.docking = initObj.docking
      }
      else {
        this.docking = false;
      }
      if (initObj.hasOwnProperty('parking')) {
        this.parking = initObj.parking
      }
      else {
        this.parking = false;
      }
      if (initObj.hasOwnProperty('planning')) {
        this.planning = initObj.planning
      }
      else {
        this.planning = false;
      }
      if (initObj.hasOwnProperty('passing')) {
        this.passing = initObj.passing
      }
      else {
        this.passing = false;
      }
      if (initObj.hasOwnProperty('inFailure')) {
        this.inFailure = initObj.inFailure
      }
      else {
        this.inFailure = false;
      }
      if (initObj.hasOwnProperty('idle')) {
        this.idle = initObj.idle
      }
      else {
        this.idle = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type signBoardData
    // Serialize message field [vehicle_name]
    bufferOffset = _serializer.string(obj.vehicle_name, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.int32(obj.priority, buffer, bufferOffset);
    // Serialize message field [curr_sector]
    bufferOffset = _serializer.string(obj.curr_sector, buffer, bufferOffset);
    // Serialize message field [allocated_sectors]
    bufferOffset = _arraySerializer.string(obj.allocated_sectors, buffer, bufferOffset, null);
    // Serialize message field [goal_sector]
    bufferOffset = _serializer.string(obj.goal_sector, buffer, bufferOffset);
    // Serialize message field [goal_sec_state]
    bufferOffset = _serializer.string(obj.goal_sec_state, buffer, bufferOffset);
    // Serialize message field [goal_pz]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.goal_pz, buffer, bufferOffset);
    // Serialize message field [goal_pz_state]
    bufferOffset = _serializer.string(obj.goal_pz_state, buffer, bufferOffset);
    // Serialize message field [pz_control]
    bufferOffset = _serializer.bool(obj.pz_control, buffer, bufferOffset);
    // Serialize message field [allocated_node]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.allocated_node, buffer, bufferOffset);
    // Serialize message field [required_segments]
    bufferOffset = _arraySerializer.uint32(obj.required_segments, buffer, bufferOffset, null);
    // Serialize message field [allocated_segments]
    bufferOffset = _arraySerializer.uint32(obj.allocated_segments, buffer, bufferOffset, null);
    // Serialize message field [curr_pz_seq]
    bufferOffset = _serializer.uint32(obj.curr_pz_seq, buffer, bufferOffset);
    // Serialize message field [moving]
    bufferOffset = _serializer.bool(obj.moving, buffer, bufferOffset);
    // Serialize message field [removing]
    bufferOffset = _serializer.bool(obj.removing, buffer, bufferOffset);
    // Serialize message field [docking]
    bufferOffset = _serializer.bool(obj.docking, buffer, bufferOffset);
    // Serialize message field [parking]
    bufferOffset = _serializer.bool(obj.parking, buffer, bufferOffset);
    // Serialize message field [planning]
    bufferOffset = _serializer.bool(obj.planning, buffer, bufferOffset);
    // Serialize message field [passing]
    bufferOffset = _serializer.bool(obj.passing, buffer, bufferOffset);
    // Serialize message field [inFailure]
    bufferOffset = _serializer.bool(obj.inFailure, buffer, bufferOffset);
    // Serialize message field [idle]
    bufferOffset = _serializer.bool(obj.idle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type signBoardData
    let len;
    let data = new signBoardData(null);
    // Deserialize message field [vehicle_name]
    data.vehicle_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [curr_sector]
    data.curr_sector = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [allocated_sectors]
    data.allocated_sectors = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [goal_sector]
    data.goal_sector = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [goal_sec_state]
    data.goal_sec_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [goal_pz]
    data.goal_pz = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_pz_state]
    data.goal_pz_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pz_control]
    data.pz_control = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [allocated_node]
    data.allocated_node = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [required_segments]
    data.required_segments = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [allocated_segments]
    data.allocated_segments = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [curr_pz_seq]
    data.curr_pz_seq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [moving]
    data.moving = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [removing]
    data.removing = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [docking]
    data.docking = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [parking]
    data.parking = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [planning]
    data.planning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [passing]
    data.passing = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [inFailure]
    data.inFailure = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [idle]
    data.idle = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.vehicle_name.length;
    length += object.curr_sector.length;
    object.allocated_sectors.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.goal_sector.length;
    length += object.goal_sec_state.length;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.goal_pz);
    length += object.goal_pz_state.length;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.allocated_node);
    length += 4 * object.required_segments.length;
    length += 4 * object.allocated_segments.length;
    return length + 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_control_msgs/signBoardData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c16a3cd6d0fc51cf9c04c727333b0e8c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new signBoardData(null);
    if (msg.vehicle_name !== undefined) {
      resolved.vehicle_name = msg.vehicle_name;
    }
    else {
      resolved.vehicle_name = ''
    }

    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    if (msg.curr_sector !== undefined) {
      resolved.curr_sector = msg.curr_sector;
    }
    else {
      resolved.curr_sector = ''
    }

    if (msg.allocated_sectors !== undefined) {
      resolved.allocated_sectors = msg.allocated_sectors;
    }
    else {
      resolved.allocated_sectors = []
    }

    if (msg.goal_sector !== undefined) {
      resolved.goal_sector = msg.goal_sector;
    }
    else {
      resolved.goal_sector = ''
    }

    if (msg.goal_sec_state !== undefined) {
      resolved.goal_sec_state = msg.goal_sec_state;
    }
    else {
      resolved.goal_sec_state = ''
    }

    if (msg.goal_pz !== undefined) {
      resolved.goal_pz = geometry_msgs.msg.PoseStamped.Resolve(msg.goal_pz)
    }
    else {
      resolved.goal_pz = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.goal_pz_state !== undefined) {
      resolved.goal_pz_state = msg.goal_pz_state;
    }
    else {
      resolved.goal_pz_state = ''
    }

    if (msg.pz_control !== undefined) {
      resolved.pz_control = msg.pz_control;
    }
    else {
      resolved.pz_control = false
    }

    if (msg.allocated_node !== undefined) {
      resolved.allocated_node = geometry_msgs.msg.PoseStamped.Resolve(msg.allocated_node)
    }
    else {
      resolved.allocated_node = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.required_segments !== undefined) {
      resolved.required_segments = msg.required_segments;
    }
    else {
      resolved.required_segments = []
    }

    if (msg.allocated_segments !== undefined) {
      resolved.allocated_segments = msg.allocated_segments;
    }
    else {
      resolved.allocated_segments = []
    }

    if (msg.curr_pz_seq !== undefined) {
      resolved.curr_pz_seq = msg.curr_pz_seq;
    }
    else {
      resolved.curr_pz_seq = 0
    }

    if (msg.moving !== undefined) {
      resolved.moving = msg.moving;
    }
    else {
      resolved.moving = false
    }

    if (msg.removing !== undefined) {
      resolved.removing = msg.removing;
    }
    else {
      resolved.removing = false
    }

    if (msg.docking !== undefined) {
      resolved.docking = msg.docking;
    }
    else {
      resolved.docking = false
    }

    if (msg.parking !== undefined) {
      resolved.parking = msg.parking;
    }
    else {
      resolved.parking = false
    }

    if (msg.planning !== undefined) {
      resolved.planning = msg.planning;
    }
    else {
      resolved.planning = false
    }

    if (msg.passing !== undefined) {
      resolved.passing = msg.passing;
    }
    else {
      resolved.passing = false
    }

    if (msg.inFailure !== undefined) {
      resolved.inFailure = msg.inFailure;
    }
    else {
      resolved.inFailure = false
    }

    if (msg.idle !== undefined) {
      resolved.idle = msg.idle;
    }
    else {
      resolved.idle = false
    }

    return resolved;
    }
};

module.exports = signBoardData;
