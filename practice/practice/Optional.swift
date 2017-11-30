//
//  Optional.swift
//  practice
//
//  Created by  Robin Smith on 14/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation

class Optional {
    static func unwrap(_ str: String?) {
        print(str!)
    }
    
    static func unwrap2(_ obj: OptionalObj?) {
        print(obj?.optionalVal! as Any)
    }
    
    static func defaulting(_ str: inout String?) -> String {
        str = str ?? "Robin"
        return str!
    }
    
    static func defaulting2(_ str: String?) -> String {
        return str ?? "Robin"
    }
    
    static func run() {
        unwrap("Robin")
        unwrap2(OptionalObj())
        var str: String?
        print(defaulting(&str))
        var str2: String?
        print(defaulting2(str2))
        print(defaulting2("Smith"))
    }
    
    class OptionalObj {
        let optionalVal : String? = "Robin"
    }
}
