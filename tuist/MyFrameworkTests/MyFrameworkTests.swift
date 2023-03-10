import MyFramework
import XCTest

final class MyFrameworkTests: XCTestCase {
    func testFoo() throws {
        let foo = Foo()
        XCTAssertEqual(foo.foo(), "Hello, World, enabled: false")
        XCTAssertEqual(foo.foo(), "Hello, World, enabled: true")
    }
}
