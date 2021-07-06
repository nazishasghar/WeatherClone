//
//  Markers.swift
//  WeatherClone
//
//  Created by Nazish Asghar on 05/07/21.
//

import Foundation


struct Marker: Hashable {
    let degrees: Double
    let label: String

    init(degrees: Double, label: String = "") {
        self.degrees = degrees
        self.label = label
    }

    static func markers() -> [Marker] {
        var sorted = [Marker]()
        for i in 0..<360 {
            if i % 2 == 1 {
            sorted.append(Marker(degrees: Double(i)))
            }
            if i == 180  {
                sorted.append(Marker(degrees: Double(i), label: "N"))
            }
            else if i == 90 {
                sorted.append(Marker(degrees: Double(i), label: "E"))
            }
            else if i == 0 {
                sorted.append(Marker(degrees: Double(i), label: "S"))
            }
            else if i == 270 {
                sorted.append(Marker(degrees: Double(i), label: "W"))
            }
        }
          return sorted
    }
    
    
    static func PressureMarker() -> [Marker]{
        var sorted = [Marker]()
        for i in 240..<480 {
            if i % 3 == 1{
        sorted.append(Marker(degrees: Double(i)))
            }
           
        }
        return sorted
    }
    func degreeText() -> String {
        return String(format: "%.0f", self.degrees)
    }
}

