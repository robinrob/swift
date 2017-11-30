//
//  Guards.swift
//  practice
//
//  Created by  Robin Smith on 29/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation

class Guards {
    static func doGuard() {
        let y: Int? = 5
        
        guard let x = y, x >= 4 else {
            print("Guard failed")
            return
        }
        
        print("x: \(x)")
    }
    
    static func doGuardFail() {
        let y: Int? = 3
        
        guard let x = y, x >= 4 else {
            print("Guard failed")
            return
        }
        
        print("x: \(x)")
    }
 
    static func run() {
        doGuard()
        print()
        doGuardFail()
    }
}
