//
//  Range.swift
//  practice
//
//  Created by  Robin Smith on 15/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation

public class Range {
    
    static func create() {
        let range = 1...3
        print(range)
        print(range.startIndex)
        print(range[range.startIndex])
        print(range.distance(from: range.startIndex, to: range.endIndex))
        for i in 7..<10 {
            print(i)
        }
        let arr = ["a", "b", "c", "d"]
        print(arr[2...3])
        print(arr[1..<3])
        for i in stride(from: 0.5, to: 1.5, by: 0.3) {
            print(i)
        }
    }
    
    static func giveMeRange(_ rng: CountableClosedRange<Int>) {
        print(rng)
    }
    
    static func run() {
        create()
        giveMeRange(1...5)
    }
}
