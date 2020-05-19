// Auto-generated. Do not edit!

// (in-package agv_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let arrayData = require('./arrayData.js');

//-----------------------------------------------------------

class gridData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xGrid = null;
      this.yGrid = null;
      this.timeInGrid = null;
      this.timeOutGrid = null;
    }
    else {
      if (initObj.hasOwnProperty('xGrid')) {
        this.xGrid = initObj.xGrid
      }
      else {
        this.xGrid = [];
      }
      if (initObj.hasOwnProperty('yGrid')) {
        this.yGrid = initObj.yGrid
      }
      else {
        this.yGrid = [];
      }
      if (initObj.hasOwnProperty('timeInGrid')) {
        this.timeInGrid = initObj.timeInGrid
      }
      else {
        this.timeInGrid = [];
      }
      if (initObj.hasOwnProperty('timeOutGrid')) {
        this.timeOutGrid = initObj.timeOutGrid
      }
      else {
        this.timeOutGrid = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gridData
    // Serialize message field [xGrid]
    // Serialize the length for message field [xGrid]
    bufferOffset = _serializer.uint32(obj.xGrid.length, buffer, bufferOffset);
    obj.xGrid.forEach((val) => {
      bufferOffset = arrayData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [yGrid]
    // Serialize the length for message field [yGrid]
    bufferOffset = _serializer.uint32(obj.yGrid.length, buffer, bufferOffset);
    obj.yGrid.forEach((val) => {
      bufferOffset = arrayData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [timeInGrid]
    // Serialize the length for message field [timeInGrid]
    bufferOffset = _serializer.uint32(obj.timeInGrid.length, buffer, bufferOffset);
    obj.timeInGrid.forEach((val) => {
      bufferOffset = arrayData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [timeOutGrid]
    // Serialize the length for message field [timeOutGrid]
    bufferOffset = _serializer.uint32(obj.timeOutGrid.length, buffer, bufferOffset);
    obj.timeOutGrid.forEach((val) => {
      bufferOffset = arrayData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gridData
    let len;
    let data = new gridData(null);
    // Deserialize message field [xGrid]
    // Deserialize array length for message field [xGrid]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.xGrid = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.xGrid[i] = arrayData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [yGrid]
    // Deserialize array length for message field [yGrid]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.yGrid = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.yGrid[i] = arrayData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [timeInGrid]
    // Deserialize array length for message field [timeInGrid]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.timeInGrid = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.timeInGrid[i] = arrayData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [timeOutGrid]
    // Deserialize array length for message field [timeOutGrid]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.timeOutGrid = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.timeOutGrid[i] = arrayData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.xGrid.forEach((val) => {
      length += arrayData.getMessageSize(val);
    });
    object.yGrid.forEach((val) => {
      length += arrayData.getMessageSize(val);
    });
    object.timeInGrid.forEach((val) => {
      length += arrayData.getMessageSize(val);
    });
    object.timeOutGrid.forEach((val) => {
      length += arrayData.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_control_msgs/gridData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75f2fe2eb528ad0443af47611bcbf66b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new gridData(null);
    if (msg.xGrid !== undefined) {
      resolved.xGrid = new Array(msg.xGrid.length);
      for (let i = 0; i < resolved.xGrid.length; ++i) {
        resolved.xGrid[i] = arrayData.Resolve(msg.xGrid[i]);
      }
    }
    else {
      resolved.xGrid = []
    }

    if (msg.yGrid !== undefined) {
      resolved.yGrid = new Array(msg.yGrid.length);
      for (let i = 0; i < resolved.yGrid.length; ++i) {
        resolved.yGrid[i] = arrayData.Resolve(msg.yGrid[i]);
      }
    }
    else {
      resolved.yGrid = []
    }

    if (msg.timeInGrid !== undefined) {
      resolved.timeInGrid = new Array(msg.timeInGrid.length);
      for (let i = 0; i < resolved.timeInGrid.length; ++i) {
        resolved.timeInGrid[i] = arrayData.Resolve(msg.timeInGrid[i]);
      }
    }
    else {
      resolved.timeInGrid = []
    }

    if (msg.timeOutGrid !== undefined) {
      resolved.timeOutGrid = new Array(msg.timeOutGrid.length);
      for (let i = 0; i < resolved.timeOutGrid.length; ++i) {
        resolved.timeOutGrid[i] = arrayData.Resolve(msg.timeOutGrid[i]);
      }
    }
    else {
      resolved.timeOutGrid = []
    }

    return resolved;
    }
};

module.exports = gridData;
