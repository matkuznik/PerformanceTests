//
//  PerformanceTests.swift
//  PerformanceTests
//
//  Created by Mateusz Kuznik on 24/03/2022.
//

import Foundation

class Vehicle {

    let maxSpeed: Double
    let noOfGear: Int
    let weight: Double
//    let timeToMaxSpeed: Double
//    let name: String

    internal init(
        maxSpeed: Double,
        noOfGear: Int,
        weight: Double
//        timeToMaxSpeed: Double,
//        name: String
    ) {

        self.maxSpeed = maxSpeed
        self.noOfGear = noOfGear
        self.weight = weight
//        self.timeToMaxSpeed = timeToMaxSpeed
//        self.name = name
    }

    func getVehicle() -> Vehicle {
        return self
    }
    func run() {}
}

class Fiat125: Vehicle {

    override func run() { }
}

class PerformanceTests1 {
    static func run(_ vehicle: Vehicle, _ vehicle2: Vehicle, _ vehicle3: Vehicle) {

        for _ in 1...1_000_000 {
            vehicle.getVehicle().run()
            vehicle2.getVehicle().run()
            vehicle3.getVehicle().run()
        }
    }
}

