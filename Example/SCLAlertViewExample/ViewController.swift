//
//  ViewController.swift
//  SCLAlertViewExample
//
//  Created by Viktor Radchenko on 6/6/14.
//  Copyright (c) 2014 Viktor Radchenko. All rights reserved.
//

import UIKit

let kSuccessTitle = "Congratulations"
let kErrorTitle = "Connection error"
let kNoticeTitle = "Notice"
let kWarningTitle = "Warning"
let kInfoTitle = "Info"
let kSubtitle = "You've just displayed this awesome Pop Up View"

let kDefaultAnimationDuration = 2.0

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showSuccess(_ sender: AnyObject) {
		let alert = SCLAlertView()
		alert.buttonsLayout = .horizontal
		alert.addButton("First Button", target:self, selector: #selector(ViewController.firstButton))
		alert.addButton("Second Button") {
			print("Second button tapped")
		}
		let _ = alert.showSuccess(kSuccessTitle, subTitle: kSubtitle)
    }
    
    @IBAction func showError(_ sender: AnyObject) {
		SCLAlertView().showError("Hold On...", subTitle:"You have not saved your Submission yet. Please save the Submission before accessing the Responses list. Blah de blah de blah, blah. Blah de blah de blah, blah.Blah de blah de blah, blah.Blah de blah de blah, blah.Blah de blah de blah, blah.Blah de blah de blah, blah.", closeButtonTitle:"OK")
//        SCLAlertView().showError(self, title: kErrorTitle, subTitle: kSubtitle)
    }
    
    @IBAction func showNotice(_ sender: AnyObject) {
        SCLAlertView().showNotice(kNoticeTitle, subTitle: kSubtitle)
    }
    
    @IBAction func showWarning(_ sender: AnyObject) {
        SCLAlertView().showWarning(kWarningTitle, subTitle: kSubtitle)
    }
    
    @IBAction func showInfo(_ sender: AnyObject) {
        SCLAlertView().showInfo(kInfoTitle, subTitle: kSubtitle)
    }

	@IBAction func showEdit(_ sender: AnyObject) {
		let alert = SCLAlertView()
		let txt = alert.addTextField("Enter your name")
		alert.addButton("Show Name") {
			print("Text value: \(txt.text)")
		}
		alert.showEdit(kInfoTitle, subTitle:kSubtitle)
	}

	@IBAction func showWarningWithCheck(_ sender: AnyObject) {
		let alert = SCLAlertView()
		alert.buttonsLayout = .horizontal
		alert.showWarningWithCheck("Warning With Check", subTitle: "Be careful", icon: UIImage(named: "testImage")!, closeButtonTitle: "Ok", cancelButtonTitle: "Cancel")
	}
	
	func firstButton() {
		print("First button tapped")
	}
}
