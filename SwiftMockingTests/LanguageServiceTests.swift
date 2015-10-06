//
//  LanguageServiceTests.swift
//  SwiftMocking
//
//  Created by Adam Gask on 06/10/2015.
//  Copyright © 2015 AJ9. All rights reserved.
//

import XCTest
@testable import SwiftMocking


class LanguageServiceTests: XCTestCase {
    
    var languageService : LanguageService!
    
    override func setUp() {
        super.setUp()
        languageService = LanguageService()
        // Put setup code here. This method is called before the invocation of each test method in the class.

    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testEnglishInvalid() {
        let response = languageService.lookUpErrorKey("Invalid")
        XCTAssertEqual(response, "Invalid", "'\(response)' should be 'Invalid'")
    }

}
