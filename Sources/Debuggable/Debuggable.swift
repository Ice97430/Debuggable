import Foundation

@propertyWrapper
public struct SingletonDebuggable<Value> {
    #if DEBUG
    public var wrappedValue: Value
    #else
    public let wrappedValue: Value
    #endif
    
    public init(wrappedValue: Value, debug: Value? = nil, preview: Value? = nil, testing: Value? = nil) {
        #if DEBUG
        self.wrappedValue = {
          if (ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == "1") {
              return preview ?? wrappedValue
          } else {
              return debug ?? wrappedValue
          }
        }()
        #elseif TESTING
        self.wrappedValue = testing ?? wrappedValue
        #else
        self.wrappedValue = wrappedValue
        #endif
    }
}

@propertyWrapper
public struct Debuggable<Value> {
    public var wrappedValue: Value
    
    public init(wrappedValue: Value, debug: Value? = nil, preview: Value? = nil, testing: Value? = nil) {
        #if DEBUG
        self.wrappedValue = {
          if (ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == "1") {
              return preview ?? wrappedValue
          } else {
              return debug ?? wrappedValue
          }
        }()
        #elseif TESTING
        self.wrappedValue = testing ?? wrappedValue
        #else
        self.wrappedValue = wrappedValue
        #endif
    }
}
