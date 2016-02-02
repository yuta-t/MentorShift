//
//  Shift.swift
//  MentorShift
//
//  Created by Yuta Tadachi on 2016/02/03.
//  Copyright © 2016年 yuta-t. All rights reserved.
//

import Foundation

struct Shift {
    let datetime: NSDate
    let role: Role
    
    var date: String {
        let comp = datetime.convertToComponents([.Month, .Day, .Weekday])
        let weekSymbols = NSDateFormatter().weekSymbols
        return "\(comp.month)月 \(comp.day)日 (\(weekSymbols[comp.weekday]))"
    }
    
    var time: String {
        let comp = datetime.convertToComponents(.Hour)
        return "\(comp.hour)時 - \(comp.hour + 2)時"
    }
}

extension Shift {
    enum Role: String {
        case Web = "rails_site"
        case Remote = "rails_remote"
        case Breaktime = "breaktime"
        case iOS = "ios_site"
    }
}
