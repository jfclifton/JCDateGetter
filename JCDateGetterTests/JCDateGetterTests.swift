//
//  JCDateGetterTests.swift
//  JCDateGetterTests
//
//  Created by JFClifton on 6/3/14.
//  Copyright (c) 2014 Jordan Clifton. All rights reserved.
//

import XCTest
import JCDateGetter

class JCDateGetterTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDays() {
        var d1 = NSDate()
        d1 = d1.dateByAddingTimeInterval(-259200)
        
        var d2 = 3.days(.ago)
        
        let t12 = d1.timeIntervalSinceDate(d2)
        
        XCTAssert(t12 < 1.0, "Days ago failed; difference was \(t12) seconds")
        
        var d3 = NSDate()
        d3 = d3.dateByAddingTimeInterval(432000)
        
        var d4 = 5.days(.ahead)
        
        let t34 = d3.timeIntervalSinceDate(d4)
        
        XCTAssert(t34 < 1.0, "Days ago failed; difference was \(t34) seconds")
        
    }
    
    func testWeeks() {
        var d1 = NSDate()
        d1 = d1.dateByAddingTimeInterval(-1814400)
        
        var d2 = 3.weeks(.ago)
        
        let t12 = d1.timeIntervalSinceDate(d2)
        
        XCTAssert(t12 < 1.0, "Days ago failed; difference was \(t12) seconds")
        
        var d3 = NSDate()
        d3 = d3.dateByAddingTimeInterval(3024000)
        
        var d4 = 5.weeks(.ahead)
        
        let t34 = d3.timeIntervalSinceDate(d4)
        
        XCTAssert(t34 < 1.0, "Days ago failed; difference was \(t34) seconds")
        
    }
    
    func testMonths() {
        // I can't think of a good way to test this
    }
    
}
