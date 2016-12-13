//
//  SegueTableAdmin.swift
//  SK4LibraryDemo
//
//  Created by See.Ku on 2016/12/13.
//  Copyright (c) 2016 AxeRoad. All rights reserved.
//

import UIKit
import SK4Library

class SegueTableAdmin: SK4TableViewModel {

	let nameArray: [String]

	init(nameArray: [String]) {
		self.nameArray = nameArray
	}

	override func numberOfRows(inSection section: Int) -> Int {
		return nameArray.count
	}

	override func cellForRow(at indexPath: IndexPath) -> UITableViewCell {
		let cell = dequeueCell(at: indexPath)
		cell.textLabel?.text = nameArray[indexPath.row]
		return cell
	}

	override func didSelectRow(at indexPath: IndexPath) {
		let name = nameArray[indexPath.row]
		parent.performSegue(withIdentifier: name, sender: nil)
	}
	
}

// eof
