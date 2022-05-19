//
//  PerformanceTestsStructsTests.swift
//  PerformanceTestsTests
//
//  Created by Mateusz Kuznik on 24/03/2022.
//

import XCTest
@testable import PerformanceTests

class PerformanceTestsStructsTests: XCTestCase {

    func testPerformanceExample() throws {
        self.measure {
            let fiat = FiatS(
                maxSpeed: 180,
                noOfGear: 4,
                weight: 0.5
            )

            let fiat2 = FiatS(
                maxSpeed: 180,
                noOfGear: 4,
                weight: 0.5
            )

            let fiat3 = FiatS(
                maxSpeed: 180,
                noOfGear: 4,
                weight: 0.5
            )
            PerformanceTestsStruct.run([fiat, fiat2, fiat3])
        }
    }
}
