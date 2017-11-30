//
//  Patterns.swift
//  practice
//
//  Created by  Robin Smith on 29/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation

class Patterns {
    static func wildcardPattern() {
        // _ matches anything
        for _ in 1...3 {
            print("Hello from loop!")
        }
    }
    
    static func decomposeTuple() {
        let point = (1, 2)
        switch point {
        case let (x, y):
            print("The point is at: \(x), \(y)")
        }
    }
    
    static func initTwoVariables() {
        let (x, y): (Int, Int) = (1, 2)
        print("x: \(x)")
        print("y: \(y)")
    }
    
    
    static func run() {
        wildcardPattern()
        print()
        decomposeTuple()
        print()
        initTwoVariables()
    }
}
