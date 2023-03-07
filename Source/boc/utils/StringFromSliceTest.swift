import XCTest

final class StringFromSliceTest: XCTestCase {
    
    func testStringFromSlice() throws {
        // should serialize and parse strings
        let cases = [
            "123",
            "12345678901234567890123456789012345678901234567890123456789012345678901234567890",
            "привет мир 👀 привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀привет мир 👀"
        ]
        
        for c in cases {
            let cell = try stringToCell(src: c)
            XCTAssertEqual(try readString(slice: try cell.beginParse()), c)
        }
    }
    
}
