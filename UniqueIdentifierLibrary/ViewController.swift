//
//  ViewController.swift
//  UniqueIdentifierLibrary
//
//  Created by Sarishti on 9/13/16.
//  Copyright © 2016 sarishti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	// Outlet
	@IBOutlet weak var lblUUIDValue: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()

		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func getUUIDFromKeyChain(sender: AnyObject) {
		/**
         getUniqueIdentifier will get valueof uuid from keychain
         */
		lblUUIDValue.text = getUniqueIdentifier()
	}

	@IBAction func setUUIDInKeychain(sender: AnyObject) {
		/**
         *  If there is no value in key chain then set the value of uuid in keychain
         */
		setUniqueIdentifier()
	}

}
