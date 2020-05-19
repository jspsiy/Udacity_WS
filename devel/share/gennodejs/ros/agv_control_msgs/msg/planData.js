// Auto-generated. Do not edit!

// (in-package agv_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let stringArray = require('./stringArray.js');
let gridData = require('./gridData.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class planData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.xp = null;
      this.yp = null;
      this.fip = null;
      this.sp = null;
      this.sectors = null;
      this.pz_control = null;
      this.grid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('xp')) {
        this.xp = initObj.xp
      }
      else {
        this.xp = [];
      }
      if (initObj.hasOwnProperty('yp')) {
        this.yp = initObj.yp
      }
      else {
        this.yp = [];
      }
      if (initObj.hasOwnProperty('fip')) {
        this.fip = initObj.fip
      }
      else {
        this.fip = [];
      }
      if (initObj.hasOwnProperty('sp')) {
        this.sp = initObj.sp
      }
      else {
        this.sp = [];
      }
      if (initObj.hasOwnProperty('sectors')) {
        this.sectors = initObj.sectors
      }
      else {
        this.sectors = [];
      }
      if (initObj.hasOwnProperty('pz_control')) {
        this.pz_control = initObj.pz_control
      }
      else {
        this.pz_control = [];
      }
      if (initObj.hasOwnProperty('grid')) {
        this.grid = initObj.grid
      }
      else {
        this.grid = new gridData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type planData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [xp]
    bufferOffset = _arraySerializer.float32(obj.xp, buffer, bufferOffset, null);
    // Serialize message field [yp]
    bufferOffset = _arraySerializer.float32(obj.yp, buffer, bufferOffset, null);
    // Serialize message field [fip]
    bufferOffset = _arraySerializer.float32(obj.fip, buffer, bufferOffset, null);
    // Serialize message field [sp]
    bufferOffset = _arraySerializer.float32(obj.sp, buffer, bufferOffset, null);
    // Serialize message field [sectors]
    // Serialize the length for message field [sectors]
    bufferOffset = _serializer.uint32(obj.sectors.length, buffer, bufferOffset);
    obj.sectors.forEach((val) => {
      bufferOffset = stringArray.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pz_control]
    bufferOffset = _arraySerializer.bool(obj.pz_control, buffer, bufferOffset, null);
    // Serialize message field [grid]
    bufferOffset = gridData.serialize(obj.grid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type planData
    let len;
    let data = new planData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [xp]
    data.xp = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [yp]
    data.yp = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [fip]
    data.fip = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [sp]
    data.sp = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [sectors]
    // Deserialize array length for message field [sectors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sectors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sectors[i] = stringArray.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pz_control]
    data.pz_control = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [grid]
    data.grid = gridData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.xp.length;
    length += 4 * object.yp.length;
    length += 4 * object.fip.length;
    length += 4 * object.sp.length;
    object.sectors.forEach((val) => {
      length += stringArray.getMessageSize(val);
    });
    length += object.pz_control.length;
    length += gridData.getMessageSize(object.grid);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_control_msgs/planData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3df86da21172dbd8bb9f18e14c1164e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new planData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.xp !== undefined) {
      resolved.xp = msg.xp;
    }
    else {
      resolved.xp = []
    }

    if (msg.yp !== undefined) {
      resolved.yp = msg.yp;
    }
    else {
      resolved.yp = []
    }

    if (msg.fip !== undefined) {
      resolved.fip = msg.fip;
    }
    else {
      resolved.fip = []
    }

    if (msg.sp !== undefined) {
      resolved.sp = msg.sp;
    }
    else {
      resolved.sp = []
    }

    if (msg.sectors !== undefined) {
      resolved.sectors = new Array(msg.sectors.length);
      for (let i = 0; i < resolved.sectors.length; ++i) {
        resolved.sectors[i] = stringArray.Resolve(msg.sectors[i]);
      }
    }
    else {
      resolved.sectors = []
    }

    if (msg.pz_control !== undefined) {
      resolved.pz_control = msg.pz_control;
    }
    else {
      resolved.pz_control = []
    }

    if (msg.grid !== undefined) {
      resolved.grid = gridData.Resolve(msg.grid)
    }
    else {
      resolved.grid = new gridData()
    }

    return resolved;
    }
};

module.exports = planData;
