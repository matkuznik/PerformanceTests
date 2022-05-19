//
//  FiatP.swift
//  PerformanceTests
//
//  Created by Mateusz Kuznik on 24/03/2022.
//

import Foundation

struct FiatP: VehicleP {
    let maxSpeed: Double
    let noOfGear: Int
    let weight: Double
    let noOfDoors: Int = 4

    func run() { }

    func getVehicle() -> VehicleP {
        return self
    }

    func canRun() -> Bool {
        maxSpeed > 0
    }
}
