//
//  LazyCollectionTests.swift
//  PerformanceTestsTests
//
//  Created by Mateusz Kuznik on 24/03/2022.
//

import XCTest
@testable import PerformanceTests

class LazyCollectionTests: XCTestCase {

    func testRawImplementationTests() throws {
        let sut = LazyCollection()
        self.measure {
            sut.rawImplementation()
        }
    }

    func testLazyImplementationTests() throws {
        let sut = LazyCollection()
        self.measure {
            sut.lazyImplementation()
        }
    }

    func testInvalidLazyImplementationTests() throws {
        let sut = LazyCollection()
        self.measure {
            sut.invalidImplementation()
        }
    }
}
