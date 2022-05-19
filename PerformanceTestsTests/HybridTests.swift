//
//  HybridTests.swift
//  PerformanceTestsTests
//
//  Created by Mateusz Kuznik on 29/04/2022.
//

import XCTest
@testable import PerformanceTests

class HybridTests: XCTestCase {

    func testCopyPerformanceOfClass() throws {
        let persons = (1...6_000_000).map { _ in PersonC.build() }
        self.measure {
            for person in persons {
                person.doSth()
            }
        }
    }

    func testCopyPerformanceOfStructWithStrings() throws {
        let persons = (1...6_000_000).map { _ in PersonS.build() }
        self.measure {
            for person in persons {
                person.doSth()
            }
        }
    }

}
