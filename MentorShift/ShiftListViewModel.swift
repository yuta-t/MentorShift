//
//  ShiftListViewModel.swift
//  MentorShift
//
//  Created by Yuta Tadachi on 2016/02/03.
//  Copyright © 2016年 yuta-t. All rights reserved.
//

import UIKit
import Bond

final class ShiftListViewModel: BNDTableViewProxyDataSource {
    var shifts: ObservableArray<ObservableArray<Shift>> = []
    
    func createCell(indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "shiftCell")
        let shift = shifts[indexPath.section][indexPath.row]
        cell.textLabel?.text = "\(shift.date) \(shift.time) \(shift.role.text)"
        return cell
    }
}