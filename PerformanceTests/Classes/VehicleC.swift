//
//  VehicleC.swift
//  PerformanceTests
//
//  Created by Mateusz Kuznik on 24/03/2022.
//

import Foundation

class VehicleC {

    let maxSpeed: Double
    let noOfGear: Int
    let weight: Double

    init(
        maxSpeed: Double,
        noOfGear: Int,
        weight: Double) {

        self.maxSpeed = maxSpeed
        self.noOfGear = noOfGear
        self.weight = weight
    }

    func getVehicle() -> VehicleC {
        return self
    }

    func canRun() -> Bool {
        true
    }

    func run() {}
}
