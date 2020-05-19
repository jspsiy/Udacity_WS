// Auto-generated. Do not edit!

// (in-package agv_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let signBoardData = require('../msg/signBoardData.js');

//-----------------------------------------------------------

class SignBoardRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vehicleName = null;
    }
    else {
      if (initObj.hasOwnProperty('vehicleName')) {
        this.vehicleName = initObj.vehicleName
      }
      else {
        this.vehicleName = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SignBoardRequest
    // Serialize message field [vehicleName]
    bufferOffset = _serializer.string(obj.vehicleName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SignBoardRequest
    let len;
    let data = new SignBoardRequest(null);
    // Deserialize message field [vehicleName]
    data.vehicleName = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.vehicleName.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'agv_control_msgs/SignBoardRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2c42c1f23baba357f21a2e63400d4ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string vehicleName
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SignBoardRequest(null);
    if (msg.vehicleName !== undefined) {
      resolved.vehicleName = msg.vehicleName;
    }
    else {
      resolved.vehicleName = ''
    }

    return resolved;
    }
};

class SignBoardResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sb_data = null;
    }
    else {
      if (initObj.hasOwnProperty('sb_data')) {
        this.sb_data = initObj.sb_data
      }
      else {
        this.sb_data = new signBoardData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SignBoardResponse
    // Serialize message field [sb_data]
    bufferOffset = signBoardData.serialize(obj.sb_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SignBoardResponse
    let len;
    let data = new SignBoardResponse(null);
    // Deserialize message field [sb_data]
    data.sb_data = signBoardData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += signBoardData.getMessageSize(object.sb_data);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'agv_control_msgs/SignBoardResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f685ac512ac397dbf6cdbaf3b356e604';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    signBoardData sb_data
    
    
    ================================================================================
    MSG: agv_control_msgs/signBoardData
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
    const resolved = new SignBoardResponse(null);
    if (msg.sb_data !== undefined) {
      resolved.sb_data = signBoardData.Resolve(msg.sb_data)
    }
    else {
      resolved.sb_data = new signBoardData()
    }

    return resolved;
    }
};

module.exports = {
  Request: SignBoardRequest,
  Response: SignBoardResponse,
  md5sum() { return '390ca359a372ba93439ce72b36acb943'; },
  datatype() { return 'agv_control_msgs/SignBoard'; }
};
