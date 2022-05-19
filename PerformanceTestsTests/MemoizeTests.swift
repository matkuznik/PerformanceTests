//
//  MemoizeTests.swift
//  PerformanceTestsTests
//
//  Created by Mateusz Kuznik on 24/03/2022.
//

import XCTest
@testable import PerformanceTests

class MemoizeTests: XCTestCase {

    func testPerformanceRegular() throws {

        self.measure {
            
            let sut = Memoize()
            _ = sut.calculateRegular(35)
            _ = sut.calculateRegular(35)
            _ = sut.calculateRegular(35)
        }
    }
    func testPerformanceMemoize() throws {

        self.measure {
            let sut = Memoize()
            _ = sut.calculateMemoize(35)
            _ = sut.calculateMemoize(35)
            _ = sut.calculateMemoize(35)
        }
    }
    func testPerformanceRecursiveMemoize() throws {

        self.measure {
            let sut = Memoize()
            _ = sut.calculateRecursiveMemoize(35)
            _ = sut.calculateRecursiveMemoize(35)
            _ = sut.calculateRecursiveMemoize(35)
        }
    }

}
