//
//  Exceptions.swift
//  practice
//
//  Created by  Robin Smith on 24/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation

class Exceptions {
    static func tryCatch() {
        do {
            try print(String(contentsOf: URL(string: "http://rsmith.io.blah")!))
        } catch {
            print ("error")
            print(error)
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
    
    static func tryCatchWithPattern() {
//        do {
//            try print(heresAnError())
//        } catch * {
//            print("caught an error")
//        }
    }
    
    static func run() {
        tryCatch()
        tryCatchOnThrown()
    }
}

