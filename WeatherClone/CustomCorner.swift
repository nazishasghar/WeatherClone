//
//  CustomCorner.swift
//  WeatherClone
//
//  Created by Nazish Asghar on 04/07/21.
//

import SwiftUI

struct CustomCorner: Shape {
    var corner : UIRectCorner
    var radius : CGFloat
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
