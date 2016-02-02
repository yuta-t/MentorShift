//
//  Shift.swift
//  MentorShift
//
//  Created by Yuta Tadachi on 2016/02/03.
//  Copyright © 2016年 yuta-t. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Shift {
    static let url = "http://localhost:3000/api/shift_app/mentor_shifts"
    
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
    
    init(json: JSON) {
        let date = json["date"].stringValue
        let time = json["time"].stringValue
        let role = json["role"].stringValue
        
        datetime = NSDate.convertFromDateString("\(date) \(time)")
        self.role = Role(rawValue: role)!
    }
    
    static func fetch() -> [Shift] {
        var shifts: [Shift] = []
        
        let params = ["user_id": 55]
        WebAPI.responseJSON(Shift.url, parameters: params) { result in
            guard let result = result else { return }
            
            for (_, json) in JSON(result) {
                let shift = Shift(json: json)
                shifts.append(shift)
            }
        }
        
        return shifts
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
