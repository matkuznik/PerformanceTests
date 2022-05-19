//
//  SwiftUIView.swift
//  PerformanceTests
//
//  Created by Mateusz Kuznik on 21/04/2022.
//

import SwiftUI

@main
struct PerformanceTests: App {
  var body: some Scene {
    WindowGroup {
        SwiftUIView()
    }
  }
}

enum EmptyEnum {}
struct EmptyStruct {}
struct HouseStruct {
    let floors: Int
    let rooms: Int
    let garage: Bool
    let height: Double
}

struct FuncStruct {
    func foo(_ text: String) {
        print(text)
    }
}

class EmptyClass {}
class HouseClass {
    internal init(floors: Int, rooms: Int, garage: Bool, height: Double) {
        self.floors = floors
        self.rooms = rooms
        self.garage = garage
        self.height = height
    }

    let floors: Int
    let rooms: Int
    let garage: Bool
    let height: Double
}

protocol EmptyProtocol {}

protocol Protocol3 {
    var floors: Int { get }
    var rooms: Int { get }
    var garage: Bool { get }
}

protocol Protocol4 {
    var floors: Int { get }
    var rooms: Int { get }
    var garage: Bool { get }
    var height: Double { get }
}

protocol Protocol5 {
    var floors: Int { get }
    var rooms: Int { get }
    var garage: Bool { get }
    var height: Double { get }
    var weight: Double { get }
}

struct SwiftUIView: View {

    private var sizes = [
        "Bool: \(MemoryLayout<Bool>.size)",
        "Int: \(MemoryLayout<Int>.size)",
        "Double: \(MemoryLayout<Double>.size)",
        "String: \(MemoryLayout<String>.size)",
        "EmptyEnum:\(MemoryLayout<EmptyEnum>.size)",
        "EmptyStruct: \(MemoryLayout<EmptyStruct>.size)",
        "HouseStruct: \(MemoryLayout<HouseStruct>.size)",
        "FuncStruct: \(MemoryLayout<FuncStruct>.size)",
        "EmptyClass: \(MemoryLayout<EmptyClass>.size)",
        "HouseClass: \(MemoryLayout<HouseClass>.size)",
        "EmptyProtocol: \(MemoryLayout<EmptyProtocol>.size)",
        "Protocol3: \(MemoryLayout<Protocol3>.size)",
        "Protocol4: \(MemoryLayout<Protocol4>.size)",
        "Protocol5: \(MemoryLayout<Protocol5>.size)",
    ]

    var body: some View {
        VStack {
            List {
                Text("The contiguous memory footprint of (in bytes):")
                    .frame(maxWidth: .infinity)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                ForEach(sizes, id: \.self) { message in
                    Text(message)
                }

            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

class ClassObject {}

struct Hybrid {
    let item: ClassObject
    let item2: ClassObject
    let item3: ClassObject
}
