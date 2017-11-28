//
//  Func.swift
//  practice
//
//  Created by  Robin Smith on 12/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation

class Func {
    static func helloWorld() {
        print("Hello World!")
    }
    
    static func printMsg(msg: String) {
        print(msg)
    }
    
    static func printMsgBlankArg(_ msg: String) {
        print(msg)
    }
    
    static func printMsgTimes(_ msg: String, times: Int = 1) {
        print(msg)
    }
    
    static func variadicParams(_ msgs:String ...) {
        for msg in msgs {
            print(msg)
        }
    }
    
    static func modifiableParams(_ msg:inout String) {
        msg.remove(at: msg.index(of: "o")!)
    }
    
    static func giveMeFunc(_ f:() -> ()) {
        f()
    }
    
    static func giveMeFuncWithArgs(_ f:(_ _:String) -> ()) {
        f("Hello to anonymous func")
    }
    
    static func giveMeFuncWithArgsSoICanReturn(_ f:(_ _:String) -> (String)) {
        print(f("Hello to anonymous func"))
    }
    
    static func cookieFuncer() -> () -> () {
        return { print("Cookie funcer") }
    }
    
    static func giveMeCookieFuncer(_ f:@escaping () -> ()) -> () -> () {
        return f
    }
    
    static func aFunc() {
        print("aFunc")
    }
    
    static func aFunc(_ str: String) {
        print(str)
    }
    
    static func run() {
        helloWorld()
        printMsg(msg: "Hello World!")
        printMsgBlankArg("Hello World!")
        printMsgTimes("Hello World!")
        printMsgTimes("Hello World!", times: 1)
        variadicParams("One", "Two", "Three")
        var str = "Robin"
        modifiableParams(&str)
        print(str)
        giveMeFunc (
            {
                print("Hello from anonymous func")
            }
        )
        giveMeFunc (
            {
                () -> () in
                print("Hello from anonymous func")
            }
        )
        giveMeFuncWithArgs(
            {
                (msg) -> () in
                print(msg)
            }
        )
        giveMeFuncWithArgsSoICanReturn(
            {
                (msg) -> (String) in
                print(msg)
                return msg
            }
        )
        giveMeFuncWithArgs(
            {
                (msg) in
                print(msg)
            }
        )
        giveMeFuncWithArgs({ print($0) }); // Semicolon required here!!
        {
            print("Suck my balls mate")
        }()
        cookieFuncer()()
        giveMeCookieFuncer(cookieFuncer())()
        aFunc();
        // How to specify which of two functions with same name is being referred to
        (aFunc as (String) -> ())("word")
    }
}

