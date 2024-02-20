// Auto-generated. Do not edit!

// (in-package age_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Age {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.days = null;
      this.months = null;
      this.years = null;
    }
    else {
      if (initObj.hasOwnProperty('days')) {
        this.days = initObj.days
      }
      else {
        this.days = 0;
      }
      if (initObj.hasOwnProperty('months')) {
        this.months = initObj.months
      }
      else {
        this.months = 0;
      }
      if (initObj.hasOwnProperty('years')) {
        this.years = initObj.years
      }
      else {
        this.years = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Age
    // Serialize message field [days]
    bufferOffset = _serializer.int64(obj.days, buffer, bufferOffset);
    // Serialize message field [months]
    bufferOffset = _serializer.int64(obj.months, buffer, bufferOffset);
    // Serialize message field [years]
    bufferOffset = _serializer.int64(obj.years, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Age
    let len;
    let data = new Age(null);
    // Deserialize message field [days]
    data.days = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [months]
    data.months = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [years]
    data.years = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'age_pkg/Age';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '247334725da2e1f19391c83b8669c57b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 days
    int64 months
    int64 years
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Age(null);
    if (msg.days !== undefined) {
      resolved.days = msg.days;
    }
    else {
      resolved.days = 0
    }

    if (msg.months !== undefined) {
      resolved.months = msg.months;
    }
    else {
      resolved.months = 0
    }

    if (msg.years !== undefined) {
      resolved.years = msg.years;
    }
    else {
      resolved.years = 0
    }

    return resolved;
    }
};

module.exports = Age;
