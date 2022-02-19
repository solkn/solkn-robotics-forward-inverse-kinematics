// Auto-generated. Do not edit!

// (in-package arm_lib.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class IKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actuator_pose = null;
      this.joint_positions = null;
    }
    else {
      if (initObj.hasOwnProperty('actuator_pose')) {
        this.actuator_pose = initObj.actuator_pose
      }
      else {
        this.actuator_pose = [];
      }
      if (initObj.hasOwnProperty('joint_positions')) {
        this.joint_positions = initObj.joint_positions
      }
      else {
        this.joint_positions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IKRequest
    // Serialize message field [actuator_pose]
    bufferOffset = _arraySerializer.float64(obj.actuator_pose, buffer, bufferOffset, null);
    // Serialize message field [joint_positions]
    bufferOffset = _arraySerializer.float64(obj.joint_positions, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IKRequest
    let len;
    let data = new IKRequest(null);
    // Deserialize message field [actuator_pose]
    data.actuator_pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [joint_positions]
    data.joint_positions = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.actuator_pose.length;
    length += 8 * object.joint_positions.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_lib/IKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c49257596f64e9170834568343a78b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] actuator_pose
    float64[] joint_positions
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IKRequest(null);
    if (msg.actuator_pose !== undefined) {
      resolved.actuator_pose = msg.actuator_pose;
    }
    else {
      resolved.actuator_pose = []
    }

    if (msg.joint_positions !== undefined) {
      resolved.joint_positions = msg.joint_positions;
    }
    else {
      resolved.joint_positions = []
    }

    return resolved;
    }
};

class IKResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.new_angles = null;
    }
    else {
      if (initObj.hasOwnProperty('new_angles')) {
        this.new_angles = initObj.new_angles
      }
      else {
        this.new_angles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IKResponse
    // Serialize message field [new_angles]
    bufferOffset = _arraySerializer.float64(obj.new_angles, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IKResponse
    let len;
    let data = new IKResponse(null);
    // Deserialize message field [new_angles]
    data.new_angles = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.new_angles.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_lib/IKResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de7aa94c5f3c8ec24a0480233313146b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] new_angles
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IKResponse(null);
    if (msg.new_angles !== undefined) {
      resolved.new_angles = msg.new_angles;
    }
    else {
      resolved.new_angles = []
    }

    return resolved;
    }
};

module.exports = {
  Request: IKRequest,
  Response: IKResponse,
  md5sum() { return '1ddfd34f87b4b1bd0603440253b8c447'; },
  datatype() { return 'arm_lib/IK'; }
};
