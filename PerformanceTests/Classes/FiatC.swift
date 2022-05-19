//
//  FiatC.swift
//  PerformanceTests
//
//  Created by Mateusz Kuznik on 24/03/2022.
//

import Foundation


class FiatC: VehicleC {

    override func run() { }

    override func getVehicle() -> VehicleC {
        return self
    }

    override func canRun() -> Bool {
        return maxSpeed > 0
    }
}
