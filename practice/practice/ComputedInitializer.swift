//
//  ComputedInitializer.swift
//  practice
//
//  Created by  Robin Smith on 24/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation


class ComputedInitializer {
    static func computedInitializer() {
        print(AThing().myVar)
    }
    
    static func run() {
        computedInitializer()
    }
    
    class AThing {
        let val = 3
        
        // Use this when you need several lines of code to initialise a value
        var myVar : Bool {
            if val == 1 {
                return true
            } else {
                return false
            }
        }
    }
}
