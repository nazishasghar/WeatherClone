//
//  CompassView.swift
//  WeatherClone
//
//  Created by Nazish Asghar on 05/07/21.
//

import SwiftUI

struct CompassView: View {
    
    var body: some View {
        ZStack{
            ForEach(Marker.markers(), id: \.self) { marker in
                CompassMarkerView(marker: marker, compassDegress: 0)
            }
            VStack{
                Text("8")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                Text("mph").font(.title3)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }.frame(width: 80, height: 80)
            .background(Color.gray)
            .clipShape(Circle())
            
        }
    }
    
}
struct ArrowView: View {
    var body: some View {
        
        VStack(spacing:0){
       Triangle().frame(width: 20, height: 20)
        Rectangle()
            .frame(width: 5, height: 130)
            Circle()
                .stroke(lineWidth: 5)
                .frame(width: 10, height: 10)
        }
        .foregroundColor(.white)
        .rotationEffect(Angle(degrees: 50))
    }
}

struct CompassMarkerView: View {
    let marker: Marker
    let compassDegress: Double

    var body: some View {
        ZStack{
            ArrowView()
        VStack {

            Rectangle()
                .frame(width: 0.5,
                            height: 20)
                    .foregroundColor(Color.white)
                .padding(.bottom,120)

            Text(marker.label)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(self.textAngle())
                .padding(.bottom,20)
                
        }
        .rotationEffect(Angle(degrees: marker.degrees))
    }
    }
    private func textAngle() -> Angle {
        return Angle(degrees: -self.compassDegress - self.marker.degrees)
    }
}
struct Triangle : Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
               path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
               path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
               path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        return path
    }
}

struct CompassView_Previews: PreviewProvider {
    static var previews: some View {
        CompassView()
    }
}
