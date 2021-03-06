//
//  UniqueIdentifier.swift
//  UniqueIdentifierLibrary
//
//  Created by Sarishti on 9/14/16.
//  Copyright © 2016 sarishti. All rights reserved.
//

import Foundation

extension NSObject {

	/**
     Set the unique identifier in keychain
     */

	func setUniqueIdentifier() {

		// Initialize wrapper class

		let keyChain = KeychainItemWrapper.init(identifier: "Test", accessGroup: nil)

		guard let strUUIDKeyChain = keyChain.objectForKey(kSecAttrAccount) as? String else {
			return
		}

		// Check if the Value in keychain is empty only then UUID store in keychain other wise previous one will remain.

		if strUUIDKeyChain.isEmpty {
			keyChain.setObject(getUniversalUniqueDeviceIdentifier(), forKey: kSecAttrAccount)
			print("value of identifier is set")
		} else {
			print("value Already set ")
		}
	}

	/**
     // Get the unique identifier from keychain

     - returns: value of UUID from keychain
     */

	func getUniqueIdentifier() -> String {

		let keyChain = KeychainItemWrapper.init(identifier: "Test", accessGroup: nil)
		print("(keyChain.objectForKey(kSecAttrAccount) : \(keyChain.objectForKey(kSecAttrAccount))")

		// Get the value of UUID from key chain

		guard let strUUIDKeyChain = keyChain.objectForKey(kSecAttrAccount) as? String else {
			return ""
		}
		return strUUIDKeyChain
	}

	/**
     Function to get the UUID

     - returns: UUID in string
     */

	func getUniversalUniqueDeviceIdentifier() -> String {
		#if (arch(i386) || arch(x86_64))
			return "Simulator"
		#else
			return UIDevice.currentDevice().identifierForVendor!.UUIDString
		#endif
	}
}
