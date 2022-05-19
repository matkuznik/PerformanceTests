//
//  PerformanceTestsProtocolsTests.swift
//  PerformanceTestsTests
//
//  Created by Mateusz Kuznik on 24/03/2022.
//

import XCTest
@testable import PerformanceTests

class PerformanceTestsProtocolsTests: XCTestCase {

    func testPerformanceExample() throws {
        self.measure {
            let fiat = FiatP(
                maxSpeed: 180,
                noOfGear: 4,
                weight: 0.5
            )

            let fiat2 = FiatP(
                maxSpeed: 180,
                noOfGear: 4,
                weight: 0.5
            )

            let fiat3 = FiatP(
                maxSpeed: 180,
                noOfGear: 4,
                weight: 0.5
            )
            PerformanceTestsProtocols.run([fiat, fiat2, fiat3])
        }
    }

}
