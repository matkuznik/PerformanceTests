//
//  ReserveCapacity.swift
//  PerformanceTests
//
//  Created by Mateusz Kuznik on 24/03/2022.
//

import Foundation


class ReserveCapacity {

    func rawImplementation() {

        var array = [Int]()

        for i in 0..<5_000_000 {
            array.append(i*i)
        }
    }

    func reserveCapacityImplementation() {

        var array = [Int]()
        array.reserveCapacity(5_000_000)

        for i in 0..<5_000_000 {
            array.append(i*i)
        }
    }

    private var temporaryArray = [Int]()
    func invalidReversCapacityImplementation() {
        temporaryArray = []

        for _ in 1...50_000 {
            invalidAppend()
        }
    }

    private func invalidAppend() {
        let newSize = temporaryArray.count + 10
        temporaryArray.reserveCapacity(newSize)

        for _ in 0..<10 {
            temporaryArray.append(Int.random(in: 1...10_000))
        }
    }

    func rawAppend() {
        temporaryArray = []

        for _ in 1...50_000 {
            _rawAppend()
        }
    }

    private func _rawAppend() {
        for _ in 1...10 {
            temporaryArray.append(Int.random(in: 1...10_000))
        }
    }
}
