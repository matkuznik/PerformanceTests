//
//  PerformanceTestsClasses.swift
//  PerformanceTestsTests
//
//  Created by Mateusz Kuznik on 24/03/2022.
//

import XCTest
@testable import PerformanceTests

class PerformanceTestsClassesTests: XCTestCase {

    func testPerformanceExample() throws {
        self.measure {
            let fiat = FiatC(
                maxSpeed: 180,
                noOfGear: 4,
                weight: 0.5
            )

            let fiat2 = FiatC(
                maxSpeed: 180,
                noOfGear: 4,
                weight: 0.5
            )

            let fiat3 = FiatC(
                maxSpeed: 180,
                noOfGear: 4,
                weight: 0.5
            )
            PerformanceTestsClasses.run([fiat, fiat2, fiat3])
        }
    }
}
