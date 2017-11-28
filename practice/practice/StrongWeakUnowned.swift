//
//  WeakStrongUnowned.swift
//  practice
//
//  Created by  Robin Smith on 28/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation

class StrongWeakUnowned {
    static func strong() {
        var john: Person?
        var unit4A: Apartment?
        
        john = Person(name: "John Appleseed")
        unit4A = Apartment(unit: "4A")
        
        /* Strongly-link the person and apartment */
        john!.apartment = unit4A
        unit4A!.tenant = john
        
        john = nil
        unit4A = nil
    }
    
    static func weak() {
        var john: PersonWeak?
        var unit4A: ApartmentWeak?
        
        john = PersonWeak(name: "John Appleseed")
        unit4A = ApartmentWeak(unit: "4A")
        
        /* Strongly-link the person and apartment */
        john!.apartment = unit4A
        unit4A!.tenant = john
        
        john = nil
        unit4A = nil
    }
    
    static func unownedTest() {
        var john: Customer?
        
        john = Customer(name: "John Appleseed")
        john!.card = CreditCard(number: 1234_5678_9012_3456, customer: john!)
        john = nil
    }
    
    static func implicityUnwrappedOptional() {
        let country = Country(name: "Canada", capitalName: "Ottawa")
        print("\(country.name)'s capital city is called \(country.capitalCity.name)")
    }
    
    static func run() {
        strong()
        print()
        weak()
        print()
        unownedTest()
        print()
        implicityUnwrappedOptional()
    }
    
    /* Strongly-linked */
    class Person {
        let name: String
        init(name: String) { self.name = name }
        var apartment: Apartment?
        deinit { print("\(name) is being deinitialized") }
    }
    
    class Apartment {
        let unit: String
        init(unit: String) { self.unit = unit }
        var tenant: Person?
        deinit { print("Apartment \(unit) is being deinitialized") }
    }
    
    /* Weakly-linked */
    class PersonWeak {
        let name: String
        init(name: String) { self.name = name }
        var apartment: ApartmentWeak?
        deinit { print("\(name) is being deinitialized") }
    }
    
    class ApartmentWeak {
        let unit: String
        init(unit: String) { self.unit = unit }
        /*
         This means that the Person instance can be de-allocated even whilst an Apartment is referring to it,
         because there are no more strong-references to the Person
         */
        weak var tenant: PersonWeak?
        deinit { print("Apartment \(unit) is being deinitialized") }
    }
    
    /* Unowned reference */
    class Customer {
        let name: String
        var card: CreditCard?
        init(name: String) {
            self.name = name
        }
        deinit { print("\(name) is being deinitialized") }
    }
    
    class CreditCard {
        let number: UInt64
        /*
         Use an unowned reference only when you are sure that the reference always refers to an
         instance that has not been deallocated.
         
         The relationship between Customer and CreditCard is slightly different from the relationship
         between Apartment and Person seen in the weak reference example above. In this data model,
         a customer may or may not have a credit card, but a credit card will ALWAYS be associated with
         a customer.
         
         An unowned reference is expected to always have a value. As a result, ARC never sets an unowned
         reference’s value to nil, which means that unowned references are defined using nonoptional types.
         */
        unowned let customer: Customer
        init(number: UInt64, customer: Customer) {
            self.number = number
            self.customer = customer
        }
        deinit { print("Card #\(number) is being deinitialized") }
    }
    
    /*
     Unowned References and Implicitly Unwrapped Optional Properties.
     
     Sometimes it’s clear from a program’s structure that an optional will always have a value, after that
     value is first set. In these cases, it’s useful to remove the need to check and unwrap the optional’s
     value every time it’s accessed, because it can be safely assumed to have a value all of the time.
     */
    class Country {
        let name: String
        var capitalCity: City!
        init(name: String, capitalName: String) {
            self.name = name
            /*
             Because capitalCity has a default nil value, a new Country instance is considered fully
             initialized as soon as the Country instance sets its name property within its initializer.
             This means that the Country initializer can start to reference and pass around the implicit
             self property as soon as the name property is set. The Country initializer can therefore
             pass self as one of the parameters for the City initializer when the Country initializer
             is setting its own capitalCity property. Unbelievable.
             */
            self.capitalCity = City(name: capitalName, country: self)
        }
    }
    
    class City {
        let name: String
        unowned let country: Country
        init(name: String, country: Country) {
            self.name = name
            self.country = country
        }
    }
}


