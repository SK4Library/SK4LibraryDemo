//
//  ColorPickerViewController.swift
//  SK4LibraryDemo
//
//  Created by See.Ku on 2016/12/31.
//  Copyright (c) 2016 AxeRoad. All rights reserved.
//

import UIKit
import SK4Library

// /////////////////////////////////////////////////////////////
// MARK: - Carthageで@IBの情報が落ちるのに対応

@IBDesignable
class ColorPicker: SK4ColorPicker {
}

// /////////////////////////////////////////////////////////////
// MARK: -

class ColorPickerViewController: UIViewController {

	let leak = SK4LeakCheck()

	@IBAction func onColor(_ sender: Any) {
		colorLabel.text = colorPicker.color.toString()
	}

	@IBOutlet weak var colorPicker: ColorPicker!
	@IBOutlet weak var colorLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

		colorLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// eof
