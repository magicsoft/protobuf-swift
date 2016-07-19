// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "unittest_lite_imports_nonlite.proto"
// Syntax "Proto2"

import Foundation
import ProtocolBuffers

public extension ProtobufUnittest{}

public func == (lhs: ProtobufUnittest.TestLiteImportsNonlite, rhs: ProtobufUnittest.TestLiteImportsNonlite) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasMessage_ == rhs.hasMessage_) && (!lhs.hasMessage_ || lhs.message_ == rhs.message_)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension ProtobufUnittest {
  public struct UnittestLiteImportsNonliteRoot {
    public static var sharedInstance : UnittestLiteImportsNonliteRoot {
     struct Static {
         static let instance : UnittestLiteImportsNonliteRoot = UnittestLiteImportsNonliteRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      ProtobufUnittest.UnittestRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class TestLiteImportsNonlite : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasMessage_:Bool = false
    public private(set) var message_:ProtobufUnittest.TestAllTypes!
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasMessage_ {
        try output.writeMessage(1, value:message_)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasMessage_ {
          if let varSizemessage_ = message_?.computeMessageSize(1) {
              serialize_size += varSizemessage_
          }
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<ProtobufUnittest.TestLiteImportsNonlite> {
      var mergedArray = Array<ProtobufUnittest.TestLiteImportsNonlite>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> ProtobufUnittest.TestLiteImportsNonlite? {
      return try ProtobufUnittest.TestLiteImportsNonlite.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> ProtobufUnittest.TestLiteImportsNonlite {
      return try ProtobufUnittest.TestLiteImportsNonlite.Builder().mergeFromData(data, extensionRegistry:ProtobufUnittest.UnittestLiteImportsNonliteRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittest.TestLiteImportsNonlite {
      return try ProtobufUnittest.TestLiteImportsNonlite.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> ProtobufUnittest.TestLiteImportsNonlite {
      return try ProtobufUnittest.TestLiteImportsNonlite.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittest.TestLiteImportsNonlite {
      return try ProtobufUnittest.TestLiteImportsNonlite.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> ProtobufUnittest.TestLiteImportsNonlite {
      return try ProtobufUnittest.TestLiteImportsNonlite.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittest.TestLiteImportsNonlite {
      return try ProtobufUnittest.TestLiteImportsNonlite.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
      return ProtobufUnittest.TestLiteImportsNonlite.classBuilder() as! ProtobufUnittest.TestLiteImportsNonlite.Builder
    }
    public func getBuilder() -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
      return classBuilder() as! ProtobufUnittest.TestLiteImportsNonlite.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return ProtobufUnittest.TestLiteImportsNonlite.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return ProtobufUnittest.TestLiteImportsNonlite.Builder()
    }
    public func toBuilder() throws -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
      return try ProtobufUnittest.TestLiteImportsNonlite.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:ProtobufUnittest.TestLiteImportsNonlite) throws -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
      return try ProtobufUnittest.TestLiteImportsNonlite.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasMessage_ {
        jsonMap["message"] = try message_.encode()
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> ProtobufUnittest.TestLiteImportsNonlite {
      return try ProtobufUnittest.TestLiteImportsNonlite.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> ProtobufUnittest.TestLiteImportsNonlite {
      return try ProtobufUnittest.TestLiteImportsNonlite.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasMessage_ {
        output += "\(indent) message_ {\n"
        if let outDescMessage_ = message_ {
          output += try outDescMessage_.getDescription("\(indent)  ")
        }
        output += "\(indent) }\n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasMessage_ {
                if let hashValuemessage_ = message_?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValuemessage_
                }
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "ProtobufUnittest.TestLiteImportsNonlite"
    }
    override public func className() -> String {
        return "ProtobufUnittest.TestLiteImportsNonlite"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return ProtobufUnittest.TestLiteImportsNonlite.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:ProtobufUnittest.TestLiteImportsNonlite = ProtobufUnittest.TestLiteImportsNonlite()
      public func getMessage() -> ProtobufUnittest.TestLiteImportsNonlite {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasMessage_:Bool {
           get {
               return builderResult.hasMessage_
           }
      }
      public var message_:ProtobufUnittest.TestAllTypes! {
           get {
               if message_Builder_ != nil {
                  builderResult.message_ = message_Builder_.getMessage()
               }
               return builderResult.message_
           }
           set (value) {
               builderResult.hasMessage_ = true
               builderResult.message_ = value
           }
      }
      private var message_Builder_:ProtobufUnittest.TestAllTypes.Builder! {
           didSet {
              builderResult.hasMessage_ = true
           }
      }
      public func getMessage_Builder() -> ProtobufUnittest.TestAllTypes.Builder {
        if message_Builder_ == nil {
           message_Builder_ = ProtobufUnittest.TestAllTypes.Builder()
           builderResult.message_ = message_Builder_.getMessage()
           if message_ != nil {
              try! message_Builder_.mergeFrom(message_)
           }
        }
        return message_Builder_
      }
      public func setMessage_(value:ProtobufUnittest.TestAllTypes!) -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
        self.message_ = value
        return self
      }
      public func mergeMessage_(value:ProtobufUnittest.TestAllTypes) throws -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
        if builderResult.hasMessage_ {
          builderResult.message_ = try ProtobufUnittest.TestAllTypes.builderWithPrototype(builderResult.message_).mergeFrom(value).buildPartial()
        } else {
          builderResult.message_ = value
        }
        builderResult.hasMessage_ = true
        return self
      }
      public func clearMessage_() -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
        message_Builder_ = nil
        builderResult.hasMessage_ = false
        builderResult.message_ = nil
        return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
        builderResult = ProtobufUnittest.TestLiteImportsNonlite()
        return self
      }
      override public func clone() throws -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
        return try ProtobufUnittest.TestLiteImportsNonlite.builderWithPrototype(builderResult)
      }
      override public func build() throws -> ProtobufUnittest.TestLiteImportsNonlite {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> ProtobufUnittest.TestLiteImportsNonlite {
        let returnMe:ProtobufUnittest.TestLiteImportsNonlite = builderResult
        return returnMe
      }
      public func mergeFrom(other:ProtobufUnittest.TestLiteImportsNonlite) throws -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
        if other == ProtobufUnittest.TestLiteImportsNonlite() {
         return self
        }
        if (other.hasMessage_) {
            try mergeMessage_(other.message_)
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10:
            let subBuilder:ProtobufUnittest.TestAllTypes.Builder = ProtobufUnittest.TestAllTypes.Builder()
            if hasMessage_ {
              try subBuilder.mergeFrom(message_)
            }
            try input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
            message_ = subBuilder.buildPartial()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
        let resultDecodedBuilder = ProtobufUnittest.TestLiteImportsNonlite.Builder()
        if let jsonValueMessage_ = jsonMap["message"] as? Dictionary<String,AnyObject> {
          resultDecodedBuilder.message_ = try ProtobufUnittest.TestAllTypes.Builder.decodeToBuilder(jsonValueMessage_).build()

        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> ProtobufUnittest.TestLiteImportsNonlite.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try ProtobufUnittest.TestLiteImportsNonlite.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
