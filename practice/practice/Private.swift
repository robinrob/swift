//
//  Private.swift
//  practice
//
//  Created by  Robin Smith on 01/12/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation


class Private {
    private let string = "Robin"
    static let anotherString = "Smith"
    class var aThirdString: String {
        return "Robin Smith"
    }
}

extension Private {
    static func run() {
        Private().run()
        print(anotherString)
        print(aThirdString)
    }
    
    func run() {
        print(string)
    }
}


