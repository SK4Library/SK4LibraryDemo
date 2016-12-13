//
//  AlertViewController.swift
//  SK4LibraryDemo
//
//  Created by See.Ku on 2016/12/30.
//  Copyright (c) 2016 AxeRoad. All rights reserved.
//

import UIKit
import SK4Library

class AlertViewController: UIViewController {

	let leak = SK4LeakCheck()

	@IBAction func onSimpleAlert(_ sender: Any) {
		SK4AlertController.present(title: "Simple", message: "Are you OK?", parent: self)
	}

	@IBAction func onComplexAlert(_ sender: Any) {
		let ac = SK4AlertController(title: "Complex", message: "Are you sure?")
		ac.addDefault(title: "OK")
		ac.addCancel(title: "Cancel")
		ac.addDestructive(title: "Destruct")
		ac.present(parent: self)
	}

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

// eof
