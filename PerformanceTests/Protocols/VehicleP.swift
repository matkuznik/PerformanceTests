//
//  VehicleP.swift
//  PerformanceTests
//
//  Created by Mateusz Kuznik on 24/03/2022.
//

import Foundation

protocol VehicleP {

    var maxSpeed: Double { get }
    var noOfGear: Int { get }
    var weight: Double { get }
    var noOfDoors: Int { get }

    func getVehicle() -> VehicleP
    func canRun() -> Bool
    func run()
}
