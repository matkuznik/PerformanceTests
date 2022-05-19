//
//  FiatS.swift
//  PerformanceTests
//
//  Created by Mateusz Kuznik on 24/03/2022.
//

import Foundation

struct FiatS {

    let maxSpeed: Double
    let noOfGear: Int
    let weight: Double
//    let id: String = "The name"

    func run() { }

    func getVehicle() -> FiatS {
        return self
    }

    func canRun() -> Bool {
        maxSpeed > 0
    }
}
