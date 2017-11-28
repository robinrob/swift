//
//  Properties.swift
//  practice
//
//  Created by  Robin Smith on 18/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation

class Properties {
    let first = "Robin"
    let last = "Smith"
//    let whole = self.first + " " + self.last // cannot do this
    lazy var whole = self.first + " " + self.last
    
    func hello() {
        print("hello")
    }
    func run() {
        print(first)
        print(last)
        print(whole)
        
        let instance = Properties()
        let instanceFunc = instance.hello
        instanceFunc()
    }
}
