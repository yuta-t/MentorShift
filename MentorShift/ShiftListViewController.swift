//
//  ShiftListViewController.swift
//  MentorShift
//
//  Created by Yuta Tadachi on 2016/02/03.
//  Copyright © 2016年 yuta-t. All rights reserved.
//

import UIKit

final class ShiftListViewController: UIViewController {
    private let viewModel = ShiftListViewModel()
    
    override func loadView() {
        super.loadView()
        view = ShiftListView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
