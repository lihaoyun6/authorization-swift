    import XCTest
    @testable import Authorization

    final class AuthorizationTests: XCTestCase {
        func testExecuteWithPrivileges() throws {
            throw XCTSkip("user required")

            let fh = try Authorization.executeWithPrivileges(["/bin/ls", "/tmp"]).get()
            print(String(bytes: fh.readDataToEndOfFile(), encoding: .utf8)!)
        }
    }
