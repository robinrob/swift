//
//  AsTest.swift
//  practice
//
//  Created by  Robin Smith on 29/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation


class AsTest {
    
    static func castingFromAny() {
        let anything: Any = 1
        var anInt = (anything as? Int)
        anInt!.negate()
        print(String(describing: anInt?.description))
    }
    
    static func run() {
        castingFromAny()
    }
}
