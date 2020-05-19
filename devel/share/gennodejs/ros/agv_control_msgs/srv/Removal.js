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


//-----------------------------------------------------------

class RemovalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vehicleName = null;
      this.priority = null;
      this.req_pz_seq = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('vehicleName')) {
        this.vehicleName = initObj.vehicleName
      }
      else {
        this.vehicleName = '';
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
      if (initObj.hasOwnProperty('req_pz_seq')) {
        this.req_pz_seq = initObj.req_pz_seq
      }
      else {
        this.req_pz_seq = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemovalRequest
    // Serialize message field [vehicleName]
    bufferOffset = _serializer.string(obj.vehicleName, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.int32(obj.priority, buffer, bufferOffset);
    // Serialize message field [req_pz_seq]
    bufferOffset = _serializer.int32(obj.req_pz_seq, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemovalRequest
    let len;
    let data = new RemovalRequest(null);
    // Deserialize message field [vehicleName]
    data.vehicleName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [req_pz_seq]
    data.req_pz_seq = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.vehicleName.length;
    length += object.message.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'agv_control_msgs/RemovalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4ebc535f66ea750faed50bf32189bf7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string vehicleName
    int32 priority
    int32 req_pz_seq
    
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RemovalRequest(null);
    if (msg.vehicleName !== undefined) {
      resolved.vehicleName = msg.vehicleName;
    }
    else {
      resolved.vehicleName = ''
    }

    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    if (msg.req_pz_seq !== undefined) {
      resolved.req_pz_seq = msg.req_pz_seq;
    }
    else {
      resolved.req_pz_seq = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

class RemovalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.removalStarted = null;
    }
    else {
      if (initObj.hasOwnProperty('removalStarted')) {
        this.removalStarted = initObj.removalStarted
      }
      else {
        this.removalStarted = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemovalResponse
    // Serialize message field [removalStarted]
    bufferOffset = _serializer.bool(obj.removalStarted, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemovalResponse
    let len;
    let data = new RemovalResponse(null);
    // Deserialize message field [removalStarted]
    data.removalStarted = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'agv_control_msgs/RemovalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97ca1ed90cb839ea106e5176948bc63c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool removalStarted
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RemovalResponse(null);
    if (msg.removalStarted !== undefined) {
      resolved.removalStarted = msg.removalStarted;
    }
    else {
      resolved.removalStarted = false
    }

    return resolved;
    }
};

module.exports = {
  Request: RemovalRequest,
  Response: RemovalResponse,
  md5sum() { return 'd5f813c7363f04e91a9f024e37136d87'; },
  datatype() { return 'agv_control_msgs/Removal'; }
};
