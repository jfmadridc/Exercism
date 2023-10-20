import XCTest

@testable import HelloWorld

class HelloWorldTests: XCTestCase {
  func testHello() {
    XCTAssertEqual(hello(), "Hello, World!")
  }
	func testHelloAlice() {
    XCTAssertEqual(hello(name: "Alice"), "Hello, Alice!")
  }
}
