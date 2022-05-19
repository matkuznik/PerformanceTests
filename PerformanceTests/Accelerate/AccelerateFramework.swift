//
//  AccelerateFramework.swift
//  PerformanceTests
//
//  Created by Mateusz Kuznik on 29/04/2022.
//

import Foundation
import Accelerate


struct AccelerateFramework {

    func regular(_ array: [Double]) {
        let squareRoots = array
            .map { pow($0, 2) }
            .reduce(0, +)

        let result = sqrt(squareRoots / Double(array.count))
//        print(result)
    }

    func usingAccelerate(_ array: [Double]) {
        let result = vDSP.rootMeanSquare(array)
//        print(result)
    }
}
