//
//  BorderButtonViewController.swift
//  SK4LibraryDemo
//
//  Created by See.Ku on 2016/12/30.
//  Copyright (c) 2016 AxeRoad. All rights reserved.
//

import UIKit
import SK4Library

// /////////////////////////////////////////////////////////////
// MARK: -

/// アプリ側で継承することで、無理矢理Interface Builderで使えるようにすることが可能
@IBDesignable
class BorderButton: SK4BorderButton {
}

// /////////////////////////////////////////////////////////////
// MARK: -

class BorderButtonViewController: UIViewController {

	let leak = SK4LeakCheck()

	@IBAction func onButton2(_ sender: Any) {
		SK4AlertController.present(title: "Interface Builder", message: nil, parent: self)
	}

	var borderButton: SK4BorderButton!

    override func viewDidLoad() {
        super.viewDidLoad()

		/// プログラムからボタンを生成することでも使用可能
		let re = CGRect(x: 16, y: 80, width: 100, height: 40)
		borderButton = SK4BorderButton.make(frame: re, title: "Program")
		borderButton.addTarget(self, action: #selector(BorderButtonViewController.onButton1), for: .touchUpInside)
		view.addSubview(borderButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	func onButton1() {
		SK4AlertController.present(title: "Program", message: nil, parent: self)
	}

}

// eof
