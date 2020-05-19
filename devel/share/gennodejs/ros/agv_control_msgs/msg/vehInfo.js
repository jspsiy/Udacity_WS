// Auto-generated. Do not edit!

// (in-package agv_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let gridData = require('./gridData.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class vehInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vehicleName = null;
      this.grid = null;
      this.WrongRobots = null;
      this.xStop = null;
      this.yStop = null;
      this.currPathSeq = null;
      this.currPathSeg = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('vehicleName')) {
        this.vehicleName = initObj.vehicleName
      }
      else {
        this.vehicleName = '';
      }
      if (initObj.hasOwnProperty('grid')) {
        this.grid = initObj.grid
      }
      else {
        this.grid = new gridData();
      }
      if (initObj.hasOwnProperty('WrongRobots')) {
        this.WrongRobots = initObj.WrongRobots
      }
      else {
        this.WrongRobots = [];
      }
      if (initObj.hasOwnProperty('xStop')) {
        this.xStop = initObj.xStop
      }
      else {
        this.xStop = [];
      }
      if (initObj.hasOwnProperty('yStop')) {
        this.yStop = initObj.yStop
      }
      else {
        this.yStop = [];
      }
      if (initObj.hasOwnProperty('currPathSeq')) {
        this.currPathSeq = initObj.currPathSeq
      }
      else {
        this.currPathSeq = 0;
      }
      if (initObj.hasOwnProperty('currPathSeg')) {
        this.currPathSeg = initObj.currPathSeg
      }
      else {
        this.currPathSeg = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type vehInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vehicleName]
    bufferOffset = _serializer.string(obj.vehicleName, buffer, bufferOffset);
    // Serialize message field [grid]
    bufferOffset = gridData.serialize(obj.grid, buffer, bufferOffset);
    // Serialize message field [WrongRobots]
    bufferOffset = _arraySerializer.string(obj.WrongRobots, buffer, bufferOffset, null);
    // Serialize message field [xStop]
    bufferOffset = _arraySerializer.int32(obj.xStop, buffer, bufferOffset, null);
    // Serialize message field [yStop]
    bufferOffset = _arraySerializer.int32(obj.yStop, buffer, bufferOffset, null);
    // Serialize message field [currPathSeq]
    bufferOffset = _serializer.uint32(obj.currPathSeq, buffer, bufferOffset);
    // Serialize message field [currPathSeg]
    bufferOffset = _serializer.uint32(obj.currPathSeg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type vehInfo
    let len;
    let data = new vehInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicleName]
    data.vehicleName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [grid]
    data.grid = gridData.deserialize(buffer, bufferOffset);
    // Deserialize message field [WrongRobots]
    data.WrongRobots = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [xStop]
    data.xStop = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [yStop]
    data.yStop = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [currPathSeq]
    data.currPathSeq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [currPathSeg]
    data.currPathSeg = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.vehicleName.length;
    length += gridData.getMessageSize(object.grid);
    object.WrongRobots.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.xStop.length;
    length += 4 * object.yStop.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_control_msgs/vehInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6e9ae8dd848817a5cdb6e0944422574';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string vehicleName
    
    gridData grid
    
    string[] WrongRobots
    
    int32[] xStop
    int32[] yStop
    
    uint32 currPathSeq
    uint32 currPathSeg
    
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
    const resolved = new vehInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vehicleName !== undefined) {
      resolved.vehicleName = msg.vehicleName;
    }
    else {
      resolved.vehicleName = ''
    }

    if (msg.grid !== undefined) {
      resolved.grid = gridData.Resolve(msg.grid)
    }
    else {
      resolved.grid = new gridData()
    }

    if (msg.WrongRobots !== undefined) {
      resolved.WrongRobots = msg.WrongRobots;
    }
    else {
      resolved.WrongRobots = []
    }

    if (msg.xStop !== undefined) {
      resolved.xStop = msg.xStop;
    }
    else {
      resolved.xStop = []
    }

    if (msg.yStop !== undefined) {
      resolved.yStop = msg.yStop;
    }
    else {
      resolved.yStop = []
    }

    if (msg.currPathSeq !== undefined) {
      resolved.currPathSeq = msg.currPathSeq;
    }
    else {
      resolved.currPathSeq = 0
    }

    if (msg.currPathSeg !== undefined) {
      resolved.currPathSeg = msg.currPathSeg;
    }
    else {
      resolved.currPathSeg = 0
    }

    return resolved;
    }
};

module.exports = vehInfo;
