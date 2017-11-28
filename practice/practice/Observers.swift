//
//  Observers.swift
//  practice
//
//  Created by  Robin Smith on 24/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation


class Observers {
    static func setterObserver() {
        var s = "Robin" {
            willSet {
                print("Setting new value: \(newValue)")
            }
            
            didSet {
                print("New value was set. Old value was: \(oldValue)")
            }
        }
        
        s = "Smith"
    }
    
    static func run() {
        setterObserver()
    }
}
