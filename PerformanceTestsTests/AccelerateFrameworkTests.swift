//
//  AccelerateFrameworkTests.swift
//  PerformanceTestsTests
//
//  Created by Mateusz Kuznik on 29/04/2022.
//

import XCTest
@testable import PerformanceTests

struct TestData {
    static let array: [Double] = {
        var array = [Double]()
        array.reserveCapacity(10_000_000)
        for _ in 1 ... 10_000_000 {
            array.append(.random(in: 0...100))
        }
        return array
    }()
}


class AccelerateFrameworkTests: XCTestCase {

    override func setUp() {
        _ = TestData.array
    }

    func testRegularImplementation() throws {
        self.measure {
            AccelerateFramework().regular(TestData.array)
        }
    }

    func testAccelerateImplementation() throws {
        self.measure {
            AccelerateFramework().usingAccelerate(TestData.array)
        }
    }

}
