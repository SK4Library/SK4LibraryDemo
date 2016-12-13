//
//  ViewController.swift
//  SK4LibraryDemo
//
//  Created by See.Ku on 2016/12/13.
//  Copyright (c) 2016 AxeRoad. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

	@IBOutlet weak var tableView: UITableView!

	override func viewDidLoad() {
		super.viewDidLoad()

		let nameArray = [
			"Core",
			"GUI"
		]

		setup(tableView: tableView, nameArray: nameArray)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

}

// eof
