//
//  Tuple.swift
//  practice
//
//  Created by  Robin Smith on 15/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation


public class StringTest {
    
    static func café() {
        let cafe1 = "Cafe\u{301}"
        let cafe2 = "Café"
        print(cafe1 == cafe2)
    }
    
    static func subString() {
        let name = "Robin Smith"
        let firstSpace = name.index(of: " ") ?? name.endIndex
        let firstName = name[..<firstSpace]
        print(firstName)
        
        let lastName = name[name.index(after: firstSpace)...]
        print(lastName)
    }
    
    static func stringFromChar() {
        print(String(Character("R")))
    }
    
    static func loopOverChars(_ text: String) {
        for char in text {
            print(char)
        }
    }
    
    static func contentsOf() {
        print(String(describing: URL(string: "http://rsmith.io")!))
        do {
         try print(String(contentsOf: URL(string: "http://rsmith.io")!))
        } catch {
            print ("error")
        }
    }
    
    static func splitAndComponents() {
        let res = "Robin Smith".split(separator: " ")
        print("res: \(res)")
        let comps = "Robin Smith".components(separatedBy: " ")
        print("comps: \(comps)")
    }
    
    static func run() {
//        café()
//        subString()
//        stringFromChar()
//        loopOverChars("Robin")
//        contentsOf()
//        splitAndComponents()
    }
}

