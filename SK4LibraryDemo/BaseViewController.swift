//
//  BaseViewController.swift
//  SK4LibraryDemo
//
//  Created by See.Ku on 2016/12/14.
//  Copyright (c) 2016 AxeRoad. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

	var tableAdmin: SegueTableAdmin?

	func setup(tableView: UITableView, nameArray: [String]) {
		tableAdmin = SegueTableAdmin(nameArray: nameArray)
		tableAdmin?.setup(tableView: tableView, parent: self)
	}

    override func viewDidLoad() {
        super.viewDidLoad()

    }

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)

		tableAdmin?.viewWillAppear()
	}

	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)

		tableAdmin?.viewWillDisappear()
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// eof
