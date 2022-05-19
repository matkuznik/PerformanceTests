//
//  Hybrid.swift
//  PerformanceTests
//
//  Created by Mateusz Kuznik on 29/04/2022.
//

import Foundation

class SomeClass {

}

struct PersonS {
    let name: SomeClass
    let surname: SomeClass
    let address: SomeClass
    let city: SomeClass
    let country: SomeClass
    let continent: SomeClass
    let planet: SomeClass
    let solarSystem: SomeClass
    let idNumber: SomeClass

    static func build() -> PersonS {
        return .init(
            name: .init(),
            surname: .init(),
            address: .init(),
            city: .init(),
            country: .init(),
            continent: .init(),
            planet: .init(),
            solarSystem: .init(),
            idNumber: .init())
    }

    @inline(never)
    func doSth() { }
}

class PersonC {
    internal init(name: SomeClass, surname: SomeClass, address: SomeClass, city: SomeClass, country: SomeClass, continent: SomeClass, planet: SomeClass, solarSystem: SomeClass, idNumber: SomeClass) {
        self.name = name
        self.surname = surname
        self.address = address
        self.city = city
        self.country = country
        self.continent = continent
        self.planet = planet
        self.solarSystem = solarSystem
        self.idNumber = idNumber
    }

    let name: SomeClass
    let surname: SomeClass
    let address: SomeClass
    let city: SomeClass
    let country: SomeClass
    let continent: SomeClass
    let planet: SomeClass
    let solarSystem: SomeClass
    let idNumber: SomeClass

    static func build() -> PersonC {
        return .init(
            name: .init(),
            surname: .init(),
            address: .init(),
            city: .init(),
            country: .init(),
            continent: .init(),
            planet: .init(),
            solarSystem: .init(),
            idNumber: .init())
    }

    @inline(never)
    func doSth() { }
}
