//
//  IntTest.swift
//  practice
//
//  Created by  Robin Smith on 24/11/2017.
//  Copyright © 2017  Robin Smith. All rights reserved.
//

import Foundation

class IntTest {
    static func intFromInt() {
        print(Int(4))
    }
    
    static func clampedInt() {
        print(Int(clamping: 43290))
        print(Int(clamping: -43290))
        print(Int8(clamping: 43290))
        print(Int8(clamping: -43290))
        print(Int16(clamping: 43290))
        print(Int16(clamping: -43290))
        print(Int32(clamping: 43290))
        print(Int32(clamping: -43290))
        print(Int64(clamping: 43290))
        print(Int64(clamping: -43290))
    }
    
    static func truncatedInt() {
        print(Int8(truncatingIfNeeded: 127))
        print(Int8(truncatingIfNeeded: 128))
        print(Int8(truncatingIfNeeded: 129))
    }
    
    static func fromBitPattern() {
        print(Int8(bitPattern: UInt8(127)))
    }
    
    static func intFromFloat() {
        print(Int8(exactly: -27.0)!)
        print(String(describing: Int8(exactly: -27.1)))
    }
    
    static func intFromString() {
        print(String(describing: Int("1.23")))
        print(String(describing: Int("1.0")))
        print(Int("1")!)
    }
    
    static func operations() {
        var num : Int = 4
        num.negate()
        print(num)
        print((4 as Int8).addingReportingOverflow(123))
        print((4 as Int8).addingReportingOverflow(124))
        let report = (4 as Int8).addingReportingOverflow(124)
        print(report.overflow)
        print((4 as Int8).byteSwapped)
        print((8 as Int8).byteSwapped)
        print((8 as Int16).byteSwapped)
        print((8 as Int16).littleEndian)
        print((8 as Int16).bigEndian)
        print((8 as Int16).words)
        print((2056 as Int16).words)
        print((2055 as Int16).nonzeroBitCount)
        print(20.advanced(by: 4))
        print(20.distance(to: 128))
    }
    
    static func staticStuff() {
        print(Int8.min)
        print(Int8.max)
        print(UInt8.isSigned)
        print(UInt8.min)
        print(UInt8.max)
    }
    
    static func baseChange() {
        print(String(describing: Int("2056", radix: 2)))
    }
    
    static func run() {
        intFromInt()
        print()
        clampedInt()
        print()
        truncatedInt()
        print()
        fromBitPattern()
        print()
        intFromFloat()
        print()
        intFromString()
        print()
        operations()
        print()
        staticStuff()
        print()
        baseChange()
    }
}
