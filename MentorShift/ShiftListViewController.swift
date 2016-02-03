//
//  ShiftListViewController.swift
//  MentorShift
//
//  Created by Yuta Tadachi on 2016/02/03.
//  Copyright © 2016年 yuta-t. All rights reserved.
//

import UIKit
import Bond

final class ShiftListViewController: UIViewController {
    private let viewModel = ShiftListViewModel()
    
    override func loadView() {
        super.loadView()
        view = ShiftListView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let shiftListView = view as! ShiftListView
        
        viewModel.shifts.bindTo(shiftListView.table) { indexPath, _, _ -> UITableViewCell in
            return self.viewModel.createCell(indexPath)
        }

        Shift.fetch { shifts in
            self.viewModel.shifts.extend([ObservableArray<Shift>(shifts)])
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
