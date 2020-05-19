// Auto-generated. Do not edit!

// (in-package agv_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let gridData = require('../msg/gridData.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let planData = require('../msg/planData.js');

//-----------------------------------------------------------

class GetMyPlanRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
      this.goal = null;
      this.removing = null;
      this.carobst = null;
      this.forbiddenCells = null;
      this.vehWithFailures = null;
      this.wrongX = null;
      this.wrongY = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('removing')) {
        this.removing = initObj.removing
      }
      else {
        this.removing = false;
      }
      if (initObj.hasOwnProperty('carobst')) {
        this.carobst = initObj.carobst
      }
      else {
        this.carobst = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('forbiddenCells')) {
        this.forbiddenCells = initObj.forbiddenCells
      }
      else {
        this.forbiddenCells = new gridData();
      }
      if (initObj.hasOwnProperty('vehWithFailures')) {
        this.vehWithFailures = initObj.vehWithFailures
      }
      else {
        this.vehWithFailures = [];
      }
      if (initObj.hasOwnProperty('wrongX')) {
        this.wrongX = initObj.wrongX
      }
      else {
        this.wrongX = [];
      }
      if (initObj.hasOwnProperty('wrongY')) {
        this.wrongY = initObj.wrongY
      }
      else {
        this.wrongY = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMyPlanRequest
    // Serialize message field [start]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.start, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.goal, buffer, bufferOffset);
    // Serialize message field [removing]
    bufferOffset = _serializer.bool(obj.removing, buffer, bufferOffset);
    // Serialize message field [carobst]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.carobst, buffer, bufferOffset);
    // Serialize message field [forbiddenCells]
    bufferOffset = gridData.serialize(obj.forbiddenCells, buffer, bufferOffset);
    // Serialize message field [vehWithFailures]
    // Serialize the length for message field [vehWithFailures]
    bufferOffset = _serializer.uint32(obj.vehWithFailures.length, buffer, bufferOffset);
    obj.vehWithFailures.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PoseStamped.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [wrongX]
    bufferOffset = _arraySerializer.int32(obj.wrongX, buffer, bufferOffset, null);
    // Serialize message field [wrongY]
    bufferOffset = _arraySerializer.int32(obj.wrongY, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMyPlanRequest
    let len;
    let data = new GetMyPlanRequest(null);
    // Deserialize message field [start]
    data.start = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [removing]
    data.removing = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [carobst]
    data.carobst = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [forbiddenCells]
    data.forbiddenCells = gridData.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehWithFailures]
    // Deserialize array length for message field [vehWithFailures]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vehWithFailures = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vehWithFailures[i] = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [wrongX]
    data.wrongX = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [wrongY]
    data.wrongY = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.start);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.goal);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.carobst);
    length += gridData.getMessageSize(object.forbiddenCells);
    object.vehWithFailures.forEach((val) => {
      length += geometry_msgs.msg.PoseStamped.getMessageSize(val);
    });
    length += 4 * object.wrongX.length;
    length += 4 * object.wrongY.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'agv_control_msgs/GetMyPlanRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f307e49f4e9837bf699b86b85fdd6c2f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    geometry_msgs/PoseStamped start
    
    
    geometry_msgs/PoseStamped goal
    
    bool removing
    
    
    geometry_msgs/PoseStamped carobst
    
    
    gridData forbiddenCells
    
    geometry_msgs/PoseStamped[] vehWithFailures
    
    int32[] wrongX
    int32[] wrongY
    
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
    
    ================================================================================
    MSG: agv_control_msgs/gridData
    arrayData[] xGrid
    arrayData[] yGrid
    arrayData[] timeInGrid
    arrayData[] timeOutGrid
    
    ================================================================================
    MSG: agv_control_msgs/arrayData
    float32[] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMyPlanRequest(null);
    if (msg.start !== undefined) {
      resolved.start = geometry_msgs.msg.PoseStamped.Resolve(msg.start)
    }
    else {
      resolved.start = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.goal !== undefined) {
      resolved.goal = geometry_msgs.msg.PoseStamped.Resolve(msg.goal)
    }
    else {
      resolved.goal = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.removing !== undefined) {
      resolved.removing = msg.removing;
    }
    else {
      resolved.removing = false
    }

    if (msg.carobst !== undefined) {
      resolved.carobst = geometry_msgs.msg.PoseStamped.Resolve(msg.carobst)
    }
    else {
      resolved.carobst = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.forbiddenCells !== undefined) {
      resolved.forbiddenCells = gridData.Resolve(msg.forbiddenCells)
    }
    else {
      resolved.forbiddenCells = new gridData()
    }

    if (msg.vehWithFailures !== undefined) {
      resolved.vehWithFailures = new Array(msg.vehWithFailures.length);
      for (let i = 0; i < resolved.vehWithFailures.length; ++i) {
        resolved.vehWithFailures[i] = geometry_msgs.msg.PoseStamped.Resolve(msg.vehWithFailures[i]);
      }
    }
    else {
      resolved.vehWithFailures = []
    }

    if (msg.wrongX !== undefined) {
      resolved.wrongX = msg.wrongX;
    }
    else {
      resolved.wrongX = []
    }

    if (msg.wrongY !== undefined) {
      resolved.wrongY = msg.wrongY;
    }
    else {
      resolved.wrongY = []
    }

    return resolved;
    }
};

class GetMyPlanResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.plan = null;
    }
    else {
      if (initObj.hasOwnProperty('plan')) {
        this.plan = initObj.plan
      }
      else {
        this.plan = new planData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMyPlanResponse
    // Serialize message field [plan]
    bufferOffset = planData.serialize(obj.plan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMyPlanResponse
    let len;
    let data = new GetMyPlanResponse(null);
    // Deserialize message field [plan]
    data.plan = planData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += planData.getMessageSize(object.plan);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'agv_control_msgs/GetMyPlanResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '426dd4c3a22de2c1316078f49825445e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    planData plan
    
    
    ================================================================================
    MSG: agv_control_msgs/planData
    Header header
    
    float32[] xp
    float32[] yp
    float32[] fip
    float32[] sp
    
    stringArray[] sectors
    bool[] pz_control
    
    gridData grid
    
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
    MSG: agv_control_msgs/stringArray
    string[] data
    
    ================================================================================
    MSG: agv_control_msgs/gridData
    arrayData[] xGrid
    arrayData[] yGrid
    arrayData[] timeInGrid
    arrayData[] timeOutGrid
    
    ================================================================================
    MSG: agv_control_msgs/arrayData
    float32[] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMyPlanResponse(null);
    if (msg.plan !== undefined) {
      resolved.plan = planData.Resolve(msg.plan)
    }
    else {
      resolved.plan = new planData()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetMyPlanRequest,
  Response: GetMyPlanResponse,
  md5sum() { return 'fafb7a48c36f2c02adeb6df2d676b49e'; },
  datatype() { return 'agv_control_msgs/GetMyPlan'; }
};
