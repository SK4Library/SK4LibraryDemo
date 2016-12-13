//
//  CoreViewController.swift
//  SK4LibraryDemo
//
//  Created by See.Ku on 2016/12/13.
//  Copyright (c) 2016 AxeRoad. All rights reserved.
//

import UIKit
import SK4Library

class CoreViewController: BaseViewController {

	let leak = SK4LeakCheck()

	@IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

		let nameArray = [
			"Notify",
			"PauseFlag"
		]

		setup(tableView: tableView, nameArray: nameArray)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// eof
