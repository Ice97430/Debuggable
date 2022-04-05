import XCTest
@testable import Debuggable

final class DebuggableTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Debuggable().text, "Hello, World!")
    }
}
