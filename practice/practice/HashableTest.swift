//
//  Hashable.swift
//  practice
//
//  Created by  Robin Smith on 26/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation

class HashableTest: Hashable {
    var name: String
    var age: Int
    var hashValue: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        
        hashValue = self.name.hashValue + self.age
    }
    
    static func == (lhs: HashableTest, rhs: HashableTest) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    
    static func run() {
        let one = HashableTest(name: "Robin", age: 29)
        let two = HashableTest(name: "Smith", age: 29)
        let three = HashableTest(name: "Smith", age: 30)
        
        var result = one == two
        print("result: \(result)")
        
        result = two == three
        print("result: \(result)")
        
        let dict: [HashableTest: String] = [one: "robin", two: "smith1", three: "smith2"]
        print("dict: \(dict)")
    }
}
