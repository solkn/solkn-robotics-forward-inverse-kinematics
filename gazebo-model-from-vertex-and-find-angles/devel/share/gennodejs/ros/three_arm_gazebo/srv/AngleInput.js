// Auto-generated. Do not edit!

// (in-package three_arm_gazebo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AngleInputRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.jointOneAngle = null;
      this.jointTwoAngle = null;
      this.jointThreeAngle = null;
      this.jointFourAngle = null;
    }
    else {
      if (initObj.hasOwnProperty('jointOneAngle')) {
        this.jointOneAngle = initObj.jointOneAngle
      }
      else {
        this.jointOneAngle = 0.0;
      }
      if (initObj.hasOwnProperty('jointTwoAngle')) {
        this.jointTwoAngle = initObj.jointTwoAngle
      }
      else {
        this.jointTwoAngle = 0.0;
      }
      if (initObj.hasOwnProperty('jointThreeAngle')) {
        this.jointThreeAngle = initObj.jointThreeAngle
      }
      else {
        this.jointThreeAngle = 0.0;
      }
      if (initObj.hasOwnProperty('jointFourAngle')) {
        this.jointFourAngle = initObj.jointFourAngle
      }
      else {
        this.jointFourAngle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AngleInputRequest
    // Serialize message field [jointOneAngle]
    bufferOffset = _serializer.float64(obj.jointOneAngle, buffer, bufferOffset);
    // Serialize message field [jointTwoAngle]
    bufferOffset = _serializer.float64(obj.jointTwoAngle, buffer, bufferOffset);
    // Serialize message field [jointThreeAngle]
    bufferOffset = _serializer.float64(obj.jointThreeAngle, buffer, bufferOffset);
    // Serialize message field [jointFourAngle]
    bufferOffset = _serializer.float64(obj.jointFourAngle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AngleInputRequest
    let len;
    let data = new AngleInputRequest(null);
    // Deserialize message field [jointOneAngle]
    data.jointOneAngle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [jointTwoAngle]
    data.jointTwoAngle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [jointThreeAngle]
    data.jointThreeAngle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [jointFourAngle]
    data.jointFourAngle = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'three_arm_gazebo/AngleInputRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b58cc9c6acfc74729d0ca9f99d93c5a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 jointOneAngle
    float64 jointTwoAngle
    float64 jointThreeAngle
    float64 jointFourAngle
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AngleInputRequest(null);
    if (msg.jointOneAngle !== undefined) {
      resolved.jointOneAngle = msg.jointOneAngle;
    }
    else {
      resolved.jointOneAngle = 0.0
    }

    if (msg.jointTwoAngle !== undefined) {
      resolved.jointTwoAngle = msg.jointTwoAngle;
    }
    else {
      resolved.jointTwoAngle = 0.0
    }

    if (msg.jointThreeAngle !== undefined) {
      resolved.jointThreeAngle = msg.jointThreeAngle;
    }
    else {
      resolved.jointThreeAngle = 0.0
    }

    if (msg.jointFourAngle !== undefined) {
      resolved.jointFourAngle = msg.jointFourAngle;
    }
    else {
      resolved.jointFourAngle = 0.0
    }

    return resolved;
    }
};

class AngleInputResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AngleInputResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AngleInputResponse
    let len;
    let data = new AngleInputResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'three_arm_gazebo/AngleInputResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AngleInputResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: AngleInputRequest,
  Response: AngleInputResponse,
  md5sum() { return '7b58cc9c6acfc74729d0ca9f99d93c5a'; },
  datatype() { return 'three_arm_gazebo/AngleInput'; }
};
