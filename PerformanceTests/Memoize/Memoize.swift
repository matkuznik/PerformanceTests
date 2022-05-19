//
//  Memoize.swift
//  PerformanceTests
//
//  Created by Mateusz Kuznik on 24/03/2022.
//

import Foundation


func fibonacci(of number: Int) -> Int {
    number < 2 ? number : fibonacci(of: number - 1) + fibonacci(of: number - 2)
}

//https://www.hackingwithswift.com/plus/high-performance-apps/using-memoization-to-speed-up-slow-functions
class Memoize {

    func calculateRegular(_ count: Int) -> [Int] {
        return (1...count).map(fibonacci(of:))
    }

    func calculateLazy(_ count: Int) { //}-> LazySequence<[Int]> {
        let fibonacci = (1...count).lazy.map(fibonacci(of:))
//        fibonacci[10]
        //the fibonacci is type of: LazyMapSequence<LazySequence<(ClosedRange<Int>)>.Elements, Int>

    }

    let memoizeFibonacci = memoize(fibonacci(of:))
    func calculateMemoize(_ count: Int) -> [Int] {
        return (1...count).map(memoizeFibonacci)
    }

    let recursiveMemoizeFibonacci = recursiveMemoize1 {number, fibonacci in
        number < 2 ? number : fibonacci(number - 1) + fibonacci(number - 2)
    }
    func calculateRecursiveMemoize(_ count: Int) -> [Int] {
        return (1...count).map(recursiveMemoizeFibonacci)
    }
}

func recursiveMemoize<Input: Hashable, Output>(_ function: @escaping (Input, (Input) -> Output) -> Output) -> (Input) -> Output {

    var cache = [Input: Output]()
    var recursiveFunction: ((Input) -> Output)!

    recursiveFunction = { input in
        if let cached = cache[input] {
            return cached
        }
        let value = function(input, recursiveFunction)
        cache[input] = value
        return value
    }
    return recursiveFunction
}

func recursiveMemoize1<Input: Hashable, Output>(_ function: @escaping (Input, (Input) -> Output) -> Output) -> (Input) -> Output {

    var cache = [Input: Output]()

    func recursiveFunction(input: Input) -> Output {
        if let cached = cache[input] {
            return cached
        }
        let value = function(input, recursiveFunction)
        cache[input] = value
        return value
    }
    return recursiveFunction(input:)
}

func memoize<Input: Hashable, Output>(_ function: @escaping (Input) -> Output) -> (Input) -> Output {

    var cache = [Input: Output]()

    return { input in
        if let cached = cache[input] {
            return cached
        }
        let value = function(input)
        cache[input] = value
        return value
    }
}





































//func memoize<Input: Hashable, Output>(_ function: @escaping (Input) -> Output) -> (Input) -> Output {
//    // our item cache
//    var cache = [Input: Output]()
//
//    // send back a new closure that does our calculation
//    return { input in
//        if let cached = cache[input] {
//            return cached
//        }
//
//        let result = function(input)
//        cache[input] = result
//        return result
//    }
//}
//
//func recursiveMemoize<Input: Hashable, Output>(_ function: @escaping ((Input) -> Output, Input) -> Output) -> (Input) -> Output {
//    // our item cache
//    var cache = [Input: Output]()
//    var recursiveFunc: ((Input) -> Output)!
//    // send back a new closure that does our calculation
//    recursiveFunc = { input in
//        if let cached = cache[input] {
//            return cached
//        }
//
//        let result = function(recursiveFunc, input)
//        cache[input] = result
//        return result
//    }
//    return recursiveFunc
//}
//

