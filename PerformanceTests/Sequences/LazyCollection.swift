//
//  LazyCollection.swift
//  PerformanceTests
//
//  Created by Mateusz Kuznik on 24/03/2022.
//

import Foundation

struct LazyCollection {
    private func fibonacci(of number: Int) -> Int {
        number < 2 ? number : fibonacci(of: number - 1) + fibonacci(of: number - 2)
    }
    func rawImplementation() {
        let numbers = Array(1...35)

        let newOne = numbers.map(fibonacci(of:))
        _ = newOne[15]
    }

    func lazyImplementation() {
        let numbers = Array(1...50)

        let newOne = numbers.lazy.map(fibonacci(of:))
        _ = newOne[15]
    }

    func invalidImplementation() {
        let numbers = Array(1...50)

        let newOne = numbers.lazy.map(fibonacci(of:))
        for _ in 1...10 {
            _ = newOne[15]
        }
    }
}
