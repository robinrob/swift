//
//  ProtocolTest.swift
//  practice
//
//  Created by  Robin Smith on 24/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation

class Protocols {
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
    
    static func protocolWithSelf() {
        let myInt1 = MyInt(num: 24)
        let myInt2 = MyInt(num: 6)
        let myFloat1 = MyFloat(num: 24.0)
        let myFloat2 = MyFloat(num: 6.0)
        
        let res1 = myInt1.greaterThan(other: myInt2)
        let res2 = myFloat1.greaterThan(other: myFloat2)
        print("res1: \(res1)")
        print("res2: \(res2)")
    }
    
    static func run () {
        intersectionType()
        print()
        optionalMonster()
        print()
        protocolWithSelf()
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

protocol Protocol1 {
    func methodToImplement() -> ()
}

protocol Protocol2 {
    func methodToImplement() -> ()
}

class MyClass: Protocol1, Protocol2 {
    func methodToImplement() {
        print("implemented")
    }
}

protocol ANumber {
    // This means no downcasting required later!
    func greaterThan(other: Self) -> Bool
}

struct MyInt: ANumber {
    let num: Int
    
    func greaterThan(other: MyInt) -> Bool {
        return num > other.num
    }
}

struct MyFloat: ANumber {
    let num: Float
    
    func greaterThan(other: MyFloat) -> Bool {
        return num > other.num
    }
}
