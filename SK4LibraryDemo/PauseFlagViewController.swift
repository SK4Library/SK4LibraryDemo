//
//  PauseFlagViewController.swift
//  SK4LibraryDemo
//
//  Created by See.Ku on 2016/12/13.
//  Copyright (c) 2016 AxeRoad. All rights reserved.
//

import UIKit
import SK4Library

class PauseFlagViewController: UIViewController {

	let leak = SK4LeakCheck()

	// /////////////////////////////////////////////////////////////
	// MARK: -

	@IBOutlet weak var mixedFlag: UILabel!
	@IBOutlet weak var enableSwitch: UISwitch!
	@IBOutlet weak var pauseSwitch: UISwitch!

	@IBAction func onEnable(_ sender: Any) {
		flag.isEnable = enableSwitch.isOn
		updateFlagLabel()
	}

	@IBAction func onPause(_ sender: Any) {
		flag.isPause = pauseSwitch.isOn
		updateFlagLabel()
	}

	// /////////////////////////////////////////////////////////////
	// MARK: -

	let flag = SK4PauseFlag()

	func updateFlagLabel() {
		let str = flag.flag ? "True" : "False"
		mixedFlag.text = "mixed flag -> \(str)"
	}

    override func viewDidLoad() {
        super.viewDidLoad()

		enableSwitch.isOn = flag.isEnable
		pauseSwitch.isOn = flag.isPause

		updateFlagLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// eof
