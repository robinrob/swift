//
//  Exceptions.swift
//  practice
//
//  Created by  Robin Smith on 24/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation

class Exceptions {
    static func tryCatchAnything() {
        do {
            try print(String(contentsOf: URL(string: "http://rsmith.io.blah")!))
        } catch {
            print("error: \(error)")
        }
    }
    
    static func tryCatchSpecificError() {
        do {
            try { throw MyError() }()
        } catch let e as MyError {
            print("My error: \(e)")
        } catch let e as Error {
            print("Other Error: \(e)")
        }
    }
    
    static func heresAnError() throws -> String {
        return try String(contentsOf: URL(string: "http://rsmith.io.blah")!)
    }
    
    static func tryCatchOnThrown() {
        do {
            try print(heresAnError())
        } catch {
            print("caught an error")
        }
    }
    
    static func tryCrash() {
        try! print(heresAnError()) // Will crash the program if there's an error
    }
    
    static func tryIgnore() {
        try? print(heresAnError()) // Will crash the program if there's an error
        print("Error was ignored!")
    }
    
    static func tryCatchWithPattern() {
//        do {
//            try print(heresAnError())
//        } catch * {
//            print("caught an error")
//        }
    }
    
    static func run() {
        tryCatchAnything()
        print()
        tryCatchSpecificError()
        print()
        tryCatchOnThrown()
        print()
//        tryCrash()
        print()
        tryIgnore()
    }
    
    struct MyError: Error {}
}

