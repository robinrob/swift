//
//  Combinations.swift
//  practice
//
//  Created by  Robin Smith on 03/12/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation


class Combinations {
    static func multiplyIntArrays() {
        let A = Array(1...4)
        let B = Array(5...8)
        let C = Array(9...12)
        
        let result = ArrayMultiplier<Int>().multiply([A, B, C])
        print(result)
    }
    
    static func multiplyStringArrays() {
        let A = ["A", "B", "C", "D"]
        let B = ["E", "F", "G", "H"]
        let C = ["I", "J", "k", "L"]
        
        let result = ArrayMultiplier<String>().multiply([A, B, C])
        print(result)
    }
    
    static func run() {
        multiplyIntArrays()
        print()
        multiplyStringArrays()
    }
}

class ArrayMultiplier<T> {
    func multiply(_ listOfArrays: [[T]]) -> [[T]] {
        var result: [[T]] = []
        for array in listOfArrays {
            result = self.multiply(listOfArrays: result, by: array)
        }
        return result
    }
    
    private func multiply(listOfArrays: [[T]], by multiplyingArray: [T]) -> [[T]] {
        var result: [[T]] = []
        if listOfArrays.count > 0 {
            for array in listOfArrays {
                for item in multiplyingArray {
                    result.append(array + [item])
                }
            }
        } else {
            for item in multiplyingArray {
                result.append([item])
            }
        }
        return result
    }
}
