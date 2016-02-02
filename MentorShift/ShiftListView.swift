//
//  ShiftListView.swift
//  MentorShift
//
//  Created by Yuta Tadachi on 2016/02/03.
//  Copyright © 2016年 yuta-t. All rights reserved.
//

import UIKit

final class ShiftListView: UIView {
    let table: UITableView
    
    required init() {
        table = UITableView()
        
        super.init(frame: CGRectZero)
        addSubview(table)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        table.frame = frame
    }
}
