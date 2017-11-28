//
//  ExtensionTest.swift
//  practice
//
//  Created by  Robin Smith on 26/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation

extension String {
    func hello() {
        print("Hello from \(self)!")
    }
    
    static func hello() {
        print("Hello from String!")
    }
}

class ExtensionTest {
    static func run() {
        "Robin".hello()
        String.hello()
    }
}
