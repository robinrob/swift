//
//  Zip.swift
//  practice
//
//  Created by  Robin Smith on 03/12/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation

class Zip {
    static func run() {
        let seq1 = [1, 2, 3]
        let seq2 = [4, 5, 6]
        
        let seq3 = zip(seq1, seq2)
        print(seq3)
        
        for (el1, el2) in seq3 {
            print("\(el1), \(el2)")
        }
    }
}
