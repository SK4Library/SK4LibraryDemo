//
//  GUIViewController.swift
//  SK4LibraryDemo
//
//  Created by See.Ku on 2016/12/14.
//  Copyright (c) 2016 AxeRoad. All rights reserved.
//

import UIKit
import SK4Library

class GUIViewController: BaseViewController {

	let leak = SK4LeakCheck()

	@IBOutlet weak var tableView: UITableView!

	override func viewDidLoad() {
        super.viewDidLoad()

		let nameArray = [
			"KeyboardObserver",
			"AlertController",
			"BorderButton",
			"ColorPicker",
		]

		setup(tableView: tableView, nameArray: nameArray)
    }

	override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// eof
