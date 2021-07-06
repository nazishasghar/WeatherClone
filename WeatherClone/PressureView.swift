//
//  PressureView.swift
//  WeatherClone
//
//  Created by Nazish Asghar on 06/07/21.
//

import SwiftUI

struct PressureView: View {
    var body: some View {
        ZStack{
            ForEach(Marker.PressureMarker(),id:\.self){ marker in
                PressureMarkView(marker: marker)
                
            }
            VStack(spacing:5){
                Arrow()
                Text("29.95").fontWeight(.bold)
                    .font(.title)
                Text("inHg").fontWeight(.semibold)
                    .font(.title3)
                HStack(spacing:40){
                    Text("Low").fontWeight(.semibold)
                    Text("High").fontWeight(.semibold)
                }
            }.foregroundColor(.white)
            
        }
        
    }
}

struct PressureMarkView : View {
    let marker : Marker
    var body: some View{
        
            VStack{
                Rectangle()
                    .frame(width: 1, height: 20)
                    .padding(.bottom,150)
            }.rotationEffect(Angle(degrees: marker.degrees))
            .foregroundColor(.white)
    }
}

struct Arrow : View {
    var body: some View{
        ZStack(alignment:.top){
            HStack
        {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 5, height: 20)
            .rotationEffect(Angle(degrees: 30))
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 5, height: 20)
            .rotationEffect(Angle(degrees: -30))
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 5, height: 30)
        }.foregroundColor(.white)
    }
}
struct PressureView_Previews: PreviewProvider {
    static var previews: some View {
        PressureView()
    }
}
