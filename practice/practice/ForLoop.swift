//
//  ForLoop.swift
//  practice
//
//  Created by  Robin Smith on 12/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation


class ForLoop {
    static func for1() {
        for _ in 1...5 {
            print("Hello")
        }
    }
    
    static func for2() {
        for i in 1...5 {
            print("Hello \(i)")
        }
    }
    
    static func run() {
        for1()
        for2()
    }
}
