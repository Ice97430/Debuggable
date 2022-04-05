# Debuggable

Property Wrapper for setting up different default value for all environments

```swift

@Debuggable(debug: "debug", preview: "swiftui preview", testing: "Unit test")
static var shared: String = "release"

```
