// Auto-generated. Do not edit!

// (in-package beginner_tutorials.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class String_ModifyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Message = null;
    }
    else {
      if (initObj.hasOwnProperty('Message')) {
        this.Message = initObj.Message
      }
      else {
        this.Message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type String_ModifyRequest
    // Serialize message field [Message]
    bufferOffset = _serializer.string(obj.Message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type String_ModifyRequest
    let len;
    let data = new String_ModifyRequest(null);
    // Deserialize message field [Message]
    data.Message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Message.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/String_ModifyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce8c0532094f50bab075d6707a3fc45b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Incoming parameter of the service.
    string Message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new String_ModifyRequest(null);
    if (msg.Message !== undefined) {
      resolved.Message = msg.Message;
    }
    else {
      resolved.Message = ''
    }

    return resolved;
    }
};

class String_ModifyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type String_ModifyResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type String_ModifyResponse
    let len;
    let data = new String_ModifyResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/String_ModifyResponse';
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
    const resolved = new String_ModifyResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: String_ModifyRequest,
  Response: String_ModifyResponse,
  md5sum() { return 'ce8c0532094f50bab075d6707a3fc45b'; },
  datatype() { return 'beginner_tutorials/String_Modify'; }
};
