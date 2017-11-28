//
//  LazyIntialisation.swift
//  practice
//
//  Created by  Robin Smith on 24/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation


class LazyInitialisation {
    static func lazyInit() {
        print(AThing().myVar)
    }
    
    static func lazyInitComputed1() {
        AThing()
    }
    
    static func lazyInitComputed2() {
        print(AThing().myComputedVar)
    }
    
    static func run() {
        lazyInit()
        lazyInitComputed1()
        lazyInitComputed2()
    }
    
    class AThing {
        let val = 3
        
        // Use this when you need several lines of code to initialise a value
        lazy var myVar : Bool = true
        
        lazy var myComputedVar : Bool = {
            print("Initialising myComputed var now!")
            return true
        }()
    }
}
