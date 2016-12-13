//
//  NotifyViewController.swift
//  SK4LibraryDemo
//
//  Created by See.Ku on 2016/12/13.
//  Copyright (c) 2016 AxeRoad. All rights reserved.
//

import UIKit
import SK4Library

// /////////////////////////////////////////////////////////////
// MARK: -

enum ColorNotify: SK4Notify {
	case red
	case green
	case blue
}

class NotifyViewController: UIViewController {

	let leak = SK4LeakCheck()

	// /////////////////////////////////////////////////////////////
	// MARK: -

	@IBOutlet weak var notifyTextView: UITextView!

	@IBAction func onRed(_ sender: Any) {
		ColorNotify.red.postNotify()
	}

	@IBAction func onGreen(_ sender: Any) {
		ColorNotify.green.postNotify()
	}

	@IBAction func onBlue(_ sender: Any) {
		ColorNotify.blue.postNotify()
	}

	// /////////////////////////////////////////////////////////////
	// MARK: -

	let dateFormatter = DateFormatter(dateStyle: .none, timeStyle: .medium)

	func addText(_ text: String) {
		let str = dateFormatter.string(from: Date())
		notifyTextView.text = notifyTextView.text + "\(str): \(text)\n"
	}

    override func viewDidLoad() {
        super.viewDidLoad()

		ColorNotify.red.recieveNotify(observer: self) { [weak self] in
			self?.addText("Red")
		}

		ColorNotify.green.recieveNotify(observer: self) { [weak self] in
			let flag = DispatchQueue.isMainQueue ? "main" : "global"
			self?.addText("Green in \(flag)")
		}

		ColorNotify.blue.recieveNotifyInGlobal(observer: self) { [weak self] in
			let flag = DispatchQueue.isMainQueue ? "main" : "global"
			DispatchQueue.main.async {
				self?.addText("Blue in \(flag)")
			}
		}

		addText("Start")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// eof
