//
//  WindowShopperTests.swift
//  WindowShopperTests
//
//  Created by TBone on 7/3/18.
//  Copyright © 2018 UpscaleApps. All rights reserved.
//

import XCTest

class WindowShopperTests: XCTestCase {
    
    //Test to check the math calculation
    func testGetHours(){
        //Check to make sure it rounds up to next hour if decimal
        XCTAssert(Wage.calcHours(wage: 15.50, price: 250.3) == 17)
        //Check to make sure it returns correct calculation
        XCTAssert(Wage.calcHours(wage: 25, price: 100) == 4)
    }
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
