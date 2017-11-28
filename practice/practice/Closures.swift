//
//  Closures.swift
//  practice
//
//  Created by  Robin Smith on 28/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation

class Closures {
    static func trailingClosures() {
        let arr: [Int] = [1, 2, 3, 4, 5]

        let arr1 = arr.map({ String(-$0) })
        /* There are two ways of using trailing closures */
        let arr2 = arr.map() { String(-$0) }
        let arr3 = arr.map { String(-$0) }
        
        print("arr1: \(arr1)")
        print("arr2: \(arr2)")
        print("arr3: \(arr3)")
    }
    
    static func arrayOfClosure() {
        let outerVar = "Robin"
        
        let closures : [(_ argh: Int) -> ()] = [
            { print($0) },
            { print(-$0) },
            { print("Hello from closure 3! Arg was: \($0)") },
            { print("outerVar: \(outerVar). Arg was: \($0)") }
        ]
        
        for closure in closures {
            closure(1)
        }
    }

    static func run() {
        trailingClosures()
        print()
        arrayOfClosure()
    }
}
