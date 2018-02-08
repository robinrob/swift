//
//  Tuple.swift
//  practice
//
//  Created by  Robin Smith on 15/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation


public class TupleTest {
    
    static func create() {
        let tup: (String, Int, Double) = ("Hello", 2, 8008.5)
        print(tup)
        print(tup.0)
        print(tup.1)
        print(tup.2)
    }
    
    static func createNamed() {
        let tup: (word: String, int: Int, doub: Double) = ("Hello", 2, 8008.5)
        print(tup)
        print(tup.word)
        print(tup.int)
        print(tup.doub)
    }
    
    static func run() {
        create()
        createNamed()
    }
}
