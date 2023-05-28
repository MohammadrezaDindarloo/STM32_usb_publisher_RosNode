// Auto-generated. Do not edit!

// (in-package aras_usb_imu.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class aras_vio {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ts = null;
      this.aux_encoder = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ts')) {
        this.ts = initObj.ts
      }
      else {
        this.ts = [];
      }
      if (initObj.hasOwnProperty('aux_encoder')) {
        this.aux_encoder = initObj.aux_encoder
      }
      else {
        this.aux_encoder = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type aras_vio
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ts]
    bufferOffset = _arraySerializer.int64(obj.ts, buffer, bufferOffset, null);
    // Serialize message field [aux_encoder]
    bufferOffset = _serializer.int32(obj.aux_encoder, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type aras_vio
    let len;
    let data = new aras_vio(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ts]
    data.ts = _arrayDeserializer.int64(buffer, bufferOffset, null)
    // Deserialize message field [aux_encoder]
    data.aux_encoder = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.ts.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aras_usb_imu/aras_vio';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fefa939e2b3b93aed741afa88d1f56f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int64[] ts
    int32   aux_encoder
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new aras_vio(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ts !== undefined) {
      resolved.ts = msg.ts;
    }
    else {
      resolved.ts = []
    }

    if (msg.aux_encoder !== undefined) {
      resolved.aux_encoder = msg.aux_encoder;
    }
    else {
      resolved.aux_encoder = 0
    }

    return resolved;
    }
};

module.exports = aras_vio;
