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

class FKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_angles = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_angles')) {
        this.joint_angles = initObj.joint_angles
      }
      else {
        this.joint_angles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FKRequest
    // Serialize message field [joint_angles]
    bufferOffset = _arraySerializer.float64(obj.joint_angles, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FKRequest
    let len;
    let data = new FKRequest(null);
    // Deserialize message field [joint_angles]
    data.joint_angles = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.joint_angles.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_lib/FKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9eebf9cc7d525d143ad033b65dacb648';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] joint_angles
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FKRequest(null);
    if (msg.joint_angles !== undefined) {
      resolved.joint_angles = msg.joint_angles;
    }
    else {
      resolved.joint_angles = []
    }

    return resolved;
    }
};

class FKResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actuator_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('actuator_pose')) {
        this.actuator_pose = initObj.actuator_pose
      }
      else {
        this.actuator_pose = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FKResponse
    // Serialize message field [actuator_pose]
    bufferOffset = _arraySerializer.float64(obj.actuator_pose, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FKResponse
    let len;
    let data = new FKResponse(null);
    // Deserialize message field [actuator_pose]
    data.actuator_pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.actuator_pose.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_lib/FKResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4222ac6c84f861c87f0dc07027fcf01f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] actuator_pose
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FKResponse(null);
    if (msg.actuator_pose !== undefined) {
      resolved.actuator_pose = msg.actuator_pose;
    }
    else {
      resolved.actuator_pose = []
    }

    return resolved;
    }
};

module.exports = {
  Request: FKRequest,
  Response: FKResponse,
  md5sum() { return '5bfba77d79999ef10d63e1c6532bc662'; },
  datatype() { return 'arm_lib/FK'; }
};
