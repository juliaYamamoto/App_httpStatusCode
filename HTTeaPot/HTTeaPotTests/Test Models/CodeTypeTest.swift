//
//  CodeTypeTest.swift
//  HTTeaPotTests
//
//  Created by Júlia Yamamoto on 2020-12-15.
//

import XCTest
@testable import HTTeaPot

class CodeTypeTest: XCTestCase {
    
    
    // MARK: - Test: Cases
    
    func testCases_RawValues() {
        XCTAssertEqual(CodeType.informational.rawValue, "1xx informational")
        XCTAssertEqual(CodeType.success.rawValue, "2xx success")
        XCTAssertEqual(CodeType.redirection.rawValue, "3xx redirection")
        XCTAssertEqual(CodeType.clientError.rawValue, "4xx client error")
        XCTAssertEqual(CodeType.serverError.rawValue, "5xx server error")
    }
    
    
    // MARK: - Test: getTypeFromName
    
    func testTypeFromName_ShouldNotReturnNil_ForExistingName() {
        XCTAssertNotNil(CodeType.getTypeFromName("1xx informational"))
        XCTAssertNotNil(CodeType.getTypeFromName("2xx success"))
        XCTAssertNotNil(CodeType.getTypeFromName("3xx redirection"))
        XCTAssertNotNil(CodeType.getTypeFromName("4xx client error"))
        XCTAssertNotNil(CodeType.getTypeFromName("5xx server error"))
    }
    
    func testTypeFromName_ShouldReturnNil_ForUnexistingName() {
        XCTAssertNil(CodeType.getTypeFromName("0xx incorrect type"))
    }
    
    func testTypeFromName_ShouldReturnCorrectValue_ForName() {
        XCTAssertEqual(CodeType.getTypeFromName("1xx informational"), CodeType.informational)
        XCTAssertEqual(CodeType.getTypeFromName("2xx success"), CodeType.success)
        XCTAssertEqual(CodeType.getTypeFromName("3xx redirection"), CodeType.redirection)
        XCTAssertEqual(CodeType.getTypeFromName("4xx client error"), CodeType.clientError)
        XCTAssertEqual(CodeType.getTypeFromName("5xx server error"), CodeType.serverError)
    }
    
    // MARK: - Test: count
    
    func testCount_ShouldReturnCorrectAmount() {
        XCTAssertEqual(CodeType.count(), 5)
    }
}
