//
//  WebAPI.swift
//  MentorShift
//
//  Created by Yuta Tadachi on 2016/02/03.
//  Copyright © 2016年 yuta-t. All rights reserved.
//

import Foundation
import Alamofire

struct WebAPI {
    static func responseJSON(url: String, parameters: [String: AnyObject], completed: (AnyObject?) -> Void) {
        Alamofire.request(.GET, url, parameters: parameters)
        .authenticate(user: "tcamp", password: "master")
        .responseJSON { response in
            completed(response.result.value)
        }
    }
}