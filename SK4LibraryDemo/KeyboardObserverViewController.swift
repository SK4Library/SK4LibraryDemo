//
//  KeyboardObserverViewController.swift
//  SK4LibraryDemo
//
//  Created by See.Ku on 2016/12/14.
//  Copyright (c) 2016 AxeRoad. All rights reserved.
//

import UIKit
import SK4Library

class KeyboardObserverViewController: UIViewController, SK4KeyboardObserver {

	let leak = SK4LeakCheck()

	// /////////////////////////////////////////////////////////////
	// MARK: -

	@IBOutlet weak var textField: UITextField!
	@IBOutlet weak var textView: UITextView!
	@IBOutlet weak var bottomConstraint: NSLayoutConstraint!

	@IBAction func onDone(_ sender: Any) {
		view.endEditing(true)
	}

	// /////////////////////////////////////////////////////////////
	// MARK: -

	var defaultLength: CGFloat = 0

    override func viewDidLoad() {
        super.viewDidLoad()

		defaultLength = bottomConstraint.constant

		addText("defaultLength: \(defaultLength)")
    }

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)

		registerKeyboardObserver()
	}

	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)

		removeKeyboardObserver()
	}

	func onKeyboardWillShow(_ notify: NSNotification) {

		// キーボードと別のコントロールの間のマージン
		let margin: CGFloat = 8

		// 情報を取り出し
		let info = SK4KeyboardUserInfo(notify: notify)
		addText("Show: \(info.frameEnd!), duration: \(info.duration!)")

		// 制約を更新
		let len = view.bounds.maxY - info.frameEnd.minY + margin
		bottomConstraint.constant = len

		// アニメーション
		UIView.animate(withDuration: info.duration) { [weak self] in
			self?.view.layoutIfNeeded()
		}
	}

	func onKeyboardWillHide(_ notify: NSNotification) {

		// 情報を取り出し
		let info = SK4KeyboardUserInfo(notify: notify)
		addText("Hide: \(info.frameEnd!), duration: \(info.duration!)")

		// 制約を更新
		bottomConstraint.constant = defaultLength

		// アニメーション
		UIView.animate(withDuration: info.duration) { [weak self] in
			self?.view.layoutIfNeeded()
		}
	}

	func addText(_ text: String) {
		textView.text = textView.text + "\(text)\n"
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// eof
