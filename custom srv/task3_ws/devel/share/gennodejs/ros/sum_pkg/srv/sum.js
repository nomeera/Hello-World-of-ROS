// Auto-generated. Do not edit!

// (in-package sum_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class sumRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num1 = null;
      this.num2 = null;
    }
    else {
      if (initObj.hasOwnProperty('num1')) {
        this.num1 = initObj.num1
      }
      else {
        this.num1 = 0.0;
      }
      if (initObj.hasOwnProperty('num2')) {
        this.num2 = initObj.num2
      }
      else {
        this.num2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sumRequest
    // Serialize message field [num1]
    bufferOffset = _serializer.float64(obj.num1, buffer, bufferOffset);
    // Serialize message field [num2]
    bufferOffset = _serializer.float64(obj.num2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sumRequest
    let len;
    let data = new sumRequest(null);
    // Deserialize message field [num1]
    data.num1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [num2]
    data.num2 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sum_pkg/sumRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b40d33c58f42fc40e0db685f99189e91';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 num1
    float64 num2
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sumRequest(null);
    if (msg.num1 !== undefined) {
      resolved.num1 = msg.num1;
    }
    else {
      resolved.num1 = 0.0
    }

    if (msg.num2 !== undefined) {
      resolved.num2 = msg.num2;
    }
    else {
      resolved.num2 = 0.0
    }

    return resolved;
    }
};

class sumResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sum = null;
    }
    else {
      if (initObj.hasOwnProperty('sum')) {
        this.sum = initObj.sum
      }
      else {
        this.sum = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sumResponse
    // Serialize message field [sum]
    bufferOffset = _serializer.float64(obj.sum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sumResponse
    let len;
    let data = new sumResponse(null);
    // Deserialize message field [sum]
    data.sum = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sum_pkg/sumResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '981739b4699a7cf1b15030371beffb96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 sum
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sumResponse(null);
    if (msg.sum !== undefined) {
      resolved.sum = msg.sum;
    }
    else {
      resolved.sum = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: sumRequest,
  Response: sumResponse,
  md5sum() { return '645c2ebd161afbc4888fe6d5e4012e2f'; },
  datatype() { return 'sum_pkg/sum'; }
};
