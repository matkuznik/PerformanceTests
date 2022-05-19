//
//  HugeStruct.swift
//  PerformanceTests
//
//  Created by Mateusz Kuznik on 03/05/2022.
//

import Foundation

struct HugeStruct {
    let value0: Double = 9.0
    let value1: Double = 9.0
    let value2: Double = 9.0
    let value3: Double = 9.0
    let value4: Double = 9.0
    let value5: Double = 9.0
    let value6: Double = 9.0
    let value7: Double = 9.0
    let value8: Double = 9.0
    let value9: Double = 9.0
    let value10: Double = 9.0
    let value11: Double = 9.0
    let value12: Double = 9.0
    let value13: Double = 9.0
    let value14: Double = 9.0
    let value15: Double = 9.0
    let value16: Double = 9.0
    let value17: Double = 9.0
    let value18: Double = 9.0
    let value19: Double = 9.0
    let value20: Double = 9.0
    let value21: Double = 9.0
    let value22: Double = 9.0
    let value23: Double = 9.0
    let value24: Double = 9.0
    let value25: Double = 9.0
    let value26: Double = 9.0
    let value27: Double = 9.0
    let value28: Double = 9.0
}

struct Wrapper {

    private final class InternalStorage {
        var value: HugeStruct
        init(_ value: HugeStruct) {
            self.value = value
        }
    }

    private var internalStorage: InternalStorage

    init(_ value: HugeStruct) {
        internalStorage = .init(value)
    }

    var value: HugeStruct {
        get { internalStorage.value }
        set {
            if isKnownUniquelyReferenced(&internalStorage) == false {
                internalStorage = .init(newValue)
            } else {
                internalStorage.value = newValue
            }
        }
    }

}
