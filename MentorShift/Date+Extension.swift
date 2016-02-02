//
//  Date+Extension.swift
//  MentorShift
//
//  Created by Yuta Tadachi on 2016/02/03.
//  Copyright © 2016年 yuta-t. All rights reserved.
//

import Foundation

extension NSDate {
    // from String to NSDate
    class func convertFromDateString(dateString: String) -> NSDate {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH"
        return formatter.dateFromString(dateString)!
    }
    
    // from NSDate to NSDateComponents
    func convertToComponents(unitFlags: NSCalendarUnit) -> NSDateComponents {
        let calendar = NSCalendar(identifier: NSCalendarIdentifierGregorian)!
        return calendar.components(unitFlags, fromDate: self)
    }
}

extension NSDateFormatter {
    // shorthand to get weekSymbols
    var weekSymbols: [String] {
        locale = NSLocale(localeIdentifier: "ja")
        return shortWeekdaySymbols
    }
}
