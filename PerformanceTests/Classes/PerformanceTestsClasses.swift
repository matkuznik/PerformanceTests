//
//  PerformanceTestsClasses.swift
//  PerformanceTests
//
//  Created by Mateusz Kuznik on 24/03/2022.
//

import Foundation

class PerformanceTestsClasses {
    static func run(_ vehicle: [VehicleC]) {
        for _ in 1...6_000_000 {
            vehicle.forEach { vehicle in
                let vehicleToRun = vehicle.getVehicle()
                if vehicleToRun.canRun() {
                    vehicleToRun.run()
                }
            }
        }
    }
}
