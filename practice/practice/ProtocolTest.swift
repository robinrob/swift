//
//  ProtocolTest.swift
//  practice
//
//  Created by  Robin Smith on 24/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation

class ProtocolTest {
    static func intersectionType() {
        var adult: Animal & Human = Adult("Robin")
        print(adult.name)
        print(adult.age)
        adult.age = 30
        print(adult.age)
        let child: Animal = Adult("Robinio")
        print(child.name)
        let dog: Animal = Dog("Misty")
        print(dog.name)
    }
    
    static func optionalMonster() {
        let monst = Monster()
        print(monst)
        print(Fork().name)
    }
    
    static func run () {
        intersectionType()
        optionalMonster()
    }
}


protocol Animal {
    var name: String { get }
    
    init(_ name: String)
}

protocol Person: Animal {}

protocol Human {
    var age: Int { get set }
}

class Adult: Person, Human {
    var name: String
    var age: Int = 0
    
    required init(_ name: String) {
        self.name = "\(name) (child)"
    }
    
    init(_ name: String, _ age: Int = 0) {
        self.name = name
        self.age = age
    }
}


class Child: Person {
    var name: String
    
    required init(_ name: String) {
        self.name = "\(name) (child)"
    }
}

class Dog: Animal {
    var name: String
    
    required init(_ name: String) {
        self.name = "\(name) (woof)"
    }
}

@objc
protocol Thing {
    @objc
    optional var name: String {
        get
    }
}


class Monster: Thing {}

class Fork: Thing {
    let name = "fork"
}
