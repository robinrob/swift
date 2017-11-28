//
//  Enum.swift
//  practice
//
//  Created by  Robin Smith on 16/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation


class Enums {
    
    static func create() {
        enum Animal {
            case dog
            case cat
            case duck
        }
        print(Animal.dog)
        print(Animal.dog.hashValue)
        print(Animal.cat)
        print(Animal.duck)
    }
    
    static func createIntEnum() {
        enum Animal: Int {
            case dog
            case cat
            case duck
        }
        print(Animal.dog)
        print(Animal.cat)
        print(Animal.duck)
        print(Animal.dog.hashValue)
        print(Animal.dog.rawValue)
        print(Animal.duck.hashValue)
        print(Animal.duck.rawValue)
    }
    
    static func createWithAssociatedValues() {
        enum Animal {
            case dog(String)
            case cat(String)
        }
        print(Animal.dog)
        print(Animal.cat)
    }
    
    static func assignUsingDotSyntax() {
        enum Animal {
            case dog
            case cat
            case duck
        }
        
        let dog: Animal = .dog
        let cat: Animal = .cat
        print("dog: \(dog)")
        print("cat: \(cat)")
    }
    
    static func runIt(_ it: () -> ()) {
        it()
        print()
    }
    
    static func run() {
        runIt(create)
        runIt(createIntEnum)
        runIt(createWithAssociatedValues)
        runIt(assignUsingDotSyntax)
    }
}
