//
//  SequencesTests.swift
//  ReserveCapacityTests
//
//  Created by Mateusz Kuznik on 24/03/2022.
//

import XCTest
@testable import PerformanceTests

class ReserveCapacityTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPerformanceOfReserveCapacity1() throws {
        let sut = ReserveCapacity()
        self.measure {
            sut.rawImplementation()
        }
    }
    func testPerformanceOfReserveCapacity2() throws {
        let sut = ReserveCapacity()
        self.measure {
            sut.reserveCapacityImplementation()
        }
    }



    func testPerformanceOfReserveCapacityInvalid1() throws {
        let sut = ReserveCapacity()
        self.measure {
            sut.invalidReversCapacityImplementation()
        }
    }
    func testPerformanceOfReserveCapacityInvalid2() throws {
        let sut = ReserveCapacity()
        self.measure {
            sut.rawAppend()
        }
    }
}
