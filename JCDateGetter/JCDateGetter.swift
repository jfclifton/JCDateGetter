//
//  JCDateGetter.swift
//  JCDateGetter
//
//  Created by JFClifton on 6/3/14.
//  Copyright (c) 2014 Jordan Clifton. All rights reserved.
//

import Foundation

enum timeSpecifier {
    case timeAgo, timeAhead
}

extension Int {
    
    func months(time: timeSpecifier) -> NSDate {
        var components = NSDateComponents()
        var theDate = NSDate()
        
        func ago() {
            components.month = -self
        }
        
        func ahead() {
            components.month = self
        }
        
        switch time {
        case timeSpecifier.timeAgo:
            ago()
            
        case timeSpecifier.timeAhead:
            ahead()
        default:
            println("Error")
        }
        theDate = NSCalendar.currentCalendar().dateByAddingComponents(components, toDate:theDate, options:nil)
        return theDate
        
    }
    
    func weeks(time: timeSpecifier) -> NSDate {
        var components = NSDateComponents()
        var theDate = NSDate()
        
        func ago() {
            components.setWeek(-self)
        }
        
        func ahead() {
            components.setWeek(self)
        }
        
        switch time {
        case timeSpecifier.timeAgo:
            ago()
            
        case timeSpecifier.timeAhead:
            ahead()
        default:
            println("Error")
        }
        theDate = NSCalendar.currentCalendar().dateByAddingComponents(components, toDate:theDate, options:nil)
        return theDate
        
    }
    
    func days(time: timeSpecifier) -> NSDate {
        var components = NSDateComponents()
        var theDate = NSDate()
        
        func ago() {
            components.day = -self
        }
        
        func ahead() {
            components.day = self
        }
        
        switch time {
        case timeSpecifier.timeAgo:
            ago()
            
        case timeSpecifier.timeAhead:
            ahead()
        default:
            println("Error")
        }
        theDate = NSCalendar.currentCalendar().dateByAddingComponents(components, toDate:theDate, options:nil)
        return theDate
    }
    
}