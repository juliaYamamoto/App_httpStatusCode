//
//  JsonParserTest.swift
//  HTTeaPotTests
//
//  Created by Júlia Yamamoto on 2020-12-15.
//

import XCTest
@testable import HTTeaPot

class JsonParserTest: XCTestCase {

    // MARK: - Set up and Tear down
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    //MARK: - Test: from
    
    func testFrom_ShouldReturnNil_ForUnexistingPath() {
        XCTAssertNil(JsonParser.from(path: "fakeFileName", ofType: AllStatusCode.self))
    }
    
    func testFrom_ShouldNotReturnNil_ForExistingPath() {
        XCTAssertNotNil(JsonParser.from(path: Constants.JSON().fileName, ofType: AllStatusCode.self))
    }
    
    func testFrom_ShouldReturnNil_WhenInvalidJson() {
        XCTAssertNil(JsonParser.from(path: "testFile", ofType: AllStatusCode.self))
    }
    
    func testFrom_ShouldReturnNil_WhenInvalidCodable() {
        XCTAssertNil(JsonParser.from(path: Constants.JSON().fileName, ofType: StatusCode.self))
    }
}
