//
//  MockingWithProtocols.swift
//  practice
//
//  Created by  Robin Smith on 06/12/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation


protocol Building {
    var name: String { get set }
    
    var heightInCm: Float { get set }
    var heightInInches: Float { get }
    
    init(name: String, heightInCm: Float)
}


extension Building {
    var name: String
    var heightInCm: Float
    var heightInInches: Float {
        get {
            return heightInCm * 2.54
        }
    }
    
    init(name: String, heightInCm: Float) {
        self.init(name: name, heightInCm: heightInCm)
        self.name = name
        self.heightInCm = heightInCm
    }
}

class MockSkyScaper: Building {
//    var name: String {
//        get { return "test" }
//        set { }
//    }
//    var heightInCm: Float {
//        get { return 2.0 }
//        set {}
//    }
//    var heightInInches: Float {
//        get {
//            return 2.0
//        }
//    }
//
//    required init(name: String, heightInCm: Float) {}
}

class Office {
    let building: Building
    var buildingName: String {
        return self.building.name
    }
    
    init(building: Building) {
        self.building = building
    }
}

class MockingWithProtocols {
    static func run() {
        let skyScraper = MockSkyScaper(name: "test", heightInCm: 23.3)
        let office = Office(building: skyScraper)
        print(office.buildingName)
    }
}
