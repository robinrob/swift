//
//  Characters.swift
//  practice
//
//  Created by  Robin Smith on 01/12/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation

class Characters {
    static func createFamily() {
        let man = "\u{1F468}"
        let woman = "\u{1F469}"
        let boy = "\u{1F466}"
        let girl = "\u{1F467}"
        let joiner = "\u{200D}"
        
        func combine(person1: String, person2: String) -> String {
            return "\(person1)\(joiner)\(person2)"
        }
    
        let parents = combine(person1: man, person2: woman)
        let children = combine(person1: boy, person2: girl)
        let family = combine(
            person1: parents,
            person2: children
        )
        let family2 = combine(
            person1: combine(person1: woman, person2: woman),
            person2: combine(person1: girl, person2: boy)
        )
        let family3 = combine(
            person1: combine(person1: man, person2: man),
            person2: combine(person1: girl, person2: boy)
        )
        let family4 = combine(
            person1: combine(person1: man, person2: woman),
            person2: combine(person1: girl, person2: boy)
        )
        print("man: \(man)")
        print("parents: \(parents)")
        print("children: \(children)")
        print("family: \(family)")
        print("family2: \(family2)")
        print("family3: \(family3)")
        print("family4: \(family4)")
        print("family4: \(family4.unicodeScalars)")
        
    }
    
    static func isFlag() {
        let uk = Character("\u{1F1EC}\u{1F1E7}")
        print("uk: \(uk)")
        print("uk.isFlag: \(uk.isFlag)")
        
        let brazil = Character("\u{1F1E7}\u{1F1F7}")
        let cunts = "\(uk) and \(brazil) are countries."
        let flags = cunts.filter {
            $0.isFlag
        }
        print(cunts)
        print("flags: \(flags)")
    }
    
    static func run() {
        createFamily()
        print()
        isFlag()
    }
}

extension Unicode.Scalar {
    var isRegionalIndicator: Bool {
        return ("\u{1F1E6}"..."\u{1F1FF}").contains(self)
    }
}

extension Character {
    var isFlag: Bool {
        let scalars = self.unicodeScalars
        return scalars.count == 2 && scalars.first!.isRegionalIndicator && scalars.last!.isRegionalIndicator
    }
}
