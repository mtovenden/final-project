// Auto-generated. Do not edit!

// (in-package clover.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class State {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.yaw_mode = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.speed = null;
      this.lat = null;
      this.lon = null;
      this.vx = null;
      this.vy = null;
      this.vz = null;
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
      this.roll_rate = null;
      this.pitch_rate = null;
      this.yaw_rate = null;
      this.thrust = null;
      this.xy_frame_id = null;
      this.z_frame_id = null;
      this.yaw_frame_id = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('yaw_mode')) {
        this.yaw_mode = initObj.yaw_mode
      }
      else {
        this.yaw_mode = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0.0;
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0.0;
      }
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0.0;
      }
      if (initObj.hasOwnProperty('vy')) {
        this.vy = initObj.vy
      }
      else {
        this.vy = 0.0;
      }
      if (initObj.hasOwnProperty('vz')) {
        this.vz = initObj.vz
      }
      else {
        this.vz = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('roll_rate')) {
        this.roll_rate = initObj.roll_rate
      }
      else {
        this.roll_rate = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_rate')) {
        this.pitch_rate = initObj.pitch_rate
      }
      else {
        this.pitch_rate = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_rate')) {
        this.yaw_rate = initObj.yaw_rate
      }
      else {
        this.yaw_rate = 0.0;
      }
      if (initObj.hasOwnProperty('thrust')) {
        this.thrust = initObj.thrust
      }
      else {
        this.thrust = 0.0;
      }
      if (initObj.hasOwnProperty('xy_frame_id')) {
        this.xy_frame_id = initObj.xy_frame_id
      }
      else {
        this.xy_frame_id = '';
      }
      if (initObj.hasOwnProperty('z_frame_id')) {
        this.z_frame_id = initObj.z_frame_id
      }
      else {
        this.z_frame_id = '';
      }
      if (initObj.hasOwnProperty('yaw_frame_id')) {
        this.yaw_frame_id = initObj.yaw_frame_id
      }
      else {
        this.yaw_frame_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [yaw_mode]
    bufferOffset = _serializer.uint8(obj.yaw_mode, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.float32(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.float32(obj.lon, buffer, bufferOffset);
    // Serialize message field [vx]
    bufferOffset = _serializer.float32(obj.vx, buffer, bufferOffset);
    // Serialize message field [vy]
    bufferOffset = _serializer.float32(obj.vy, buffer, bufferOffset);
    // Serialize message field [vz]
    bufferOffset = _serializer.float32(obj.vz, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float32(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float32(obj.pitch, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [roll_rate]
    bufferOffset = _serializer.float32(obj.roll_rate, buffer, bufferOffset);
    // Serialize message field [pitch_rate]
    bufferOffset = _serializer.float32(obj.pitch_rate, buffer, bufferOffset);
    // Serialize message field [yaw_rate]
    bufferOffset = _serializer.float32(obj.yaw_rate, buffer, bufferOffset);
    // Serialize message field [thrust]
    bufferOffset = _serializer.float32(obj.thrust, buffer, bufferOffset);
    // Serialize message field [xy_frame_id]
    bufferOffset = _serializer.string(obj.xy_frame_id, buffer, bufferOffset);
    // Serialize message field [z_frame_id]
    bufferOffset = _serializer.string(obj.z_frame_id, buffer, bufferOffset);
    // Serialize message field [yaw_frame_id]
    bufferOffset = _serializer.string(obj.yaw_frame_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State
    let len;
    let data = new State(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [yaw_mode]
    data.yaw_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vx]
    data.vx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vy]
    data.vy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vz]
    data.vz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll_rate]
    data.roll_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch_rate]
    data.pitch_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw_rate]
    data.yaw_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [thrust]
    data.thrust = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [xy_frame_id]
    data.xy_frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [z_frame_id]
    data.z_frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [yaw_frame_id]
    data.yaw_frame_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.xy_frame_id);
    length += _getByteLength(object.z_frame_id);
    length += _getByteLength(object.yaw_frame_id);
    return length + 78;
  }

  static datatype() {
    // Returns string type for a message object
    return 'clover/State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd9e0ec21a3e363877a9dee3df8999bd1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MODE_NONE = 0
    uint8 MODE_NAVIGATE = 1
    uint8 MODE_NAVIGATE_GLOBAL = 2
    uint8 MODE_POSITION = 3
    uint8 MODE_VELOCITY = 4
    uint8 MODE_ATTITUDE = 5
    uint8 MODE_RATES = 6
    
    uint8 YAW_MODE_YAW = 0
    uint8 YAW_MODE_YAW_RATE = 1
    uint8 YAW_MODE_YAW_TOWARDS = 2
    
    # type of offboard control
    uint8 mode
    uint8 yaw_mode
    
    # targets
    float32 x
    float32 y
    float32 z
    float32 speed
    float32 lat
    float32 lon
    float32 vx
    float32 vy
    float32 vz
    float32 roll
    float32 pitch
    float32 yaw
    float32 roll_rate
    float32 pitch_rate
    float32 yaw_rate
    float32 thrust
    
    # frames of reference
    string xy_frame_id
    string z_frame_id
    string yaw_frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new State(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.yaw_mode !== undefined) {
      resolved.yaw_mode = msg.yaw_mode;
    }
    else {
      resolved.yaw_mode = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0.0
    }

    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0.0
    }

    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0.0
    }

    if (msg.vy !== undefined) {
      resolved.vy = msg.vy;
    }
    else {
      resolved.vy = 0.0
    }

    if (msg.vz !== undefined) {
      resolved.vz = msg.vz;
    }
    else {
      resolved.vz = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.roll_rate !== undefined) {
      resolved.roll_rate = msg.roll_rate;
    }
    else {
      resolved.roll_rate = 0.0
    }

    if (msg.pitch_rate !== undefined) {
      resolved.pitch_rate = msg.pitch_rate;
    }
    else {
      resolved.pitch_rate = 0.0
    }

    if (msg.yaw_rate !== undefined) {
      resolved.yaw_rate = msg.yaw_rate;
    }
    else {
      resolved.yaw_rate = 0.0
    }

    if (msg.thrust !== undefined) {
      resolved.thrust = msg.thrust;
    }
    else {
      resolved.thrust = 0.0
    }

    if (msg.xy_frame_id !== undefined) {
      resolved.xy_frame_id = msg.xy_frame_id;
    }
    else {
      resolved.xy_frame_id = ''
    }

    if (msg.z_frame_id !== undefined) {
      resolved.z_frame_id = msg.z_frame_id;
    }
    else {
      resolved.z_frame_id = ''
    }

    if (msg.yaw_frame_id !== undefined) {
      resolved.yaw_frame_id = msg.yaw_frame_id;
    }
    else {
      resolved.yaw_frame_id = ''
    }

    return resolved;
    }
};

// Constants for message
State.Constants = {
  MODE_NONE: 0,
  MODE_NAVIGATE: 1,
  MODE_NAVIGATE_GLOBAL: 2,
  MODE_POSITION: 3,
  MODE_VELOCITY: 4,
  MODE_ATTITUDE: 5,
  MODE_RATES: 6,
  YAW_MODE_YAW: 0,
  YAW_MODE_YAW_RATE: 1,
  YAW_MODE_YAW_TOWARDS: 2,
}

module.exports = State;
