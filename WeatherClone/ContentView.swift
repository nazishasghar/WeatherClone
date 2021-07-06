//
//  ContentView.swift
//  WeatherClone
//
//  Created by Nazish Asghar on 01/07/21.
//

import SwiftUI
import SpriteKit
struct ContentView: View {
    var body: some View {
        ZStack{
            GeometryReader{ proxy in
            Image("background").resizable()
            }
            .blur(radius: 10)
            .ignoresSafeArea()
            SpriteView(scene: RainView(),options: [.allowsTransparency])
            
            VStack(spacing:1){
                Text("Patna")
                    .font(.system(size: 40))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                Text("Fog").fontWeight(.regular)
                    .foregroundColor(.white)
                Text("43")
                    .font(.system(size: 120))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .frame(height: 120)
                
                HStack{
                    
                    Text("H:97").foregroundColor(.white)
                        .font(.system(size: 20))
                        .fontWeight(.regular)
                    Text("L:67").foregroundColor(.white)
                        .font(.system(size: 20))
                        .fontWeight(.regular)
                    
                }
                Spacer()
                ScrollView(.vertical, showsIndicators: false){
                    VStack(alignment:.center,spacing:5){
                        VStack{
                            CustomStackView {
                                Label(
                                    title: { Text("Sunny condition will continue all day. ")
                                        .foregroundColor(.white)
                                    },
                                    icon: { Image(systemName: "42.circle").foregroundColor(.white) })
                            } contentView: {
                                ScrollView(.horizontal, showsIndicators: false){
                               
                                    HStack(spacing:20){
                                        ForEach(0..<10){ _ in
                                        VStack(spacing:10){
                                            Text("Now")
                                                .font(.callout.bold())
                                                .foregroundColor(.white)
                                            Image(systemName: "sun.min")
                                                .foregroundColor(.yellow)
                                            Text("97").foregroundColor(.white)
                                        }
                                    }
                                    }
                            }
                            }
                        }
                        CustomStackView(titleView: {
                            
                            Label(
                                title: { Text("10-DAY FORECAST ").foregroundColor(.white) },
                                icon: { Image(systemName: "calendar").foregroundColor(.white) })
                            
                        }, contentView: {
                            VStack{
                            HStack(spacing: 30){
                                Text("Today").font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .frame(width: 60)
                                
                                Image(systemName: "sun.min").foregroundColor(.yellow)
                                
                                Text("51").font(.title2)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.secondary)
                                
                                LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow,Color.red]), startPoint: .leading, endPoint: .trailing).frame(width: 100,height: 5).clipShape(RoundedRectangle(cornerRadius: 20))
                                
                                Text("76").font(.title2)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.secondary)
                                
                                
                            }
                                HStack(spacing: 30){
                                    Text("Tue").font(.title3)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .frame(width: 60)
                                    
                                    Image(systemName: "sun.min").foregroundColor(.yellow)
                                    
                                    Text("51").font(.title2)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.secondary)
                                    
                                    LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow,Color.red]), startPoint: .leading, endPoint: .trailing).frame(width: 100,height: 5).clipShape(RoundedRectangle(cornerRadius: 20))
                                    
                                    Text("76").font(.title2)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.secondary)
                                    
                                    
                                }
                                HStack(spacing: 30){
                                    Text("Wed").font(.title3)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .frame(width: 60)
                                    Image(systemName: "sun.min").foregroundColor(.yellow)
                                    
                                    Text("51").font(.title2)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.secondary)
                                    
                                    LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow,Color.red]), startPoint: .leading, endPoint: .trailing).frame(width: 100,height: 5).clipShape(RoundedRectangle(cornerRadius: 20))
                                    
                                    Text("76").font(.title2)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.secondary)
                                    
                                    
                                }
                                HStack(spacing: 30){
                                    Text("Thu").font(.title3)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .frame(width: 60)
                                    Image(systemName: "sun.min").foregroundColor(.yellow)
                                    
                                    Text("51").font(.title2)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.secondary)
                                    
                                    LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow,Color.red]), startPoint: .leading, endPoint: .trailing).frame(width: 100,height: 5).clipShape(RoundedRectangle(cornerRadius: 20))
                                    
                                    Text("76").font(.title2)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.secondary)
                                    
                                    
                                }
                                HStack(spacing: 30){
                                    Text("Fri").font(.title3)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .frame(width: 60)
                                    Image(systemName: "sun.min").foregroundColor(.yellow)
                                    
                                    Text("51").font(.title2)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.secondary)
                                    
                                    LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow,Color.red]), startPoint: .leading, endPoint: .trailing).frame(width: 100,height: 5).clipShape(RoundedRectangle(cornerRadius: 20))
                                    
                                    Text("76").font(.title2)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.secondary)
                                    
                                    
                                }
                                HStack(spacing: 30){
                                    Text("Sat").font(.title3)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .frame(width: 60)
                                    Image(systemName: "sun.min").foregroundColor(.yellow)
                                    
                                    Text("51").font(.title2)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.secondary)
                                    
                                    LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow,Color.red]), startPoint: .leading, endPoint: .trailing).frame(width: 100,height: 5).clipShape(RoundedRectangle(cornerRadius: 20))
                                    
                                    Text("76").font(.title2)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.secondary)
                                    
                                    
                                }
                                HStack(spacing: 30){
                                    Text("Sun").font(.title3)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .frame(width: 60)
                                    Image(systemName: "sun.min").foregroundColor(.yellow)
                                    
                                    Text("51").font(.title2)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.secondary)
                                    
                                    LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow,Color.red]), startPoint: .leading, endPoint: .trailing).frame(width: 100,height: 5).clipShape(RoundedRectangle(cornerRadius: 20))
                                    
                                    Text("76").font(.title2)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.secondary)
                                    
                                    
                                }
                                
                            
                            
                            }
                            
                        })
                        HStack{
                        CustomStackView(titleView: {
                            
                            
                            Label(
                                title: { Text("RAINFALL").foregroundColor(.white) },
                                icon: { Image(systemName: "drop.fill").foregroundColor(.white) }
)
                            
                        }, contentView: {
                            VStack(alignment:.leading){
                                Text("0").font(.system(size: 30))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .frame(height: 20)
                                
                                Text("in last 24 hrs").foregroundColor(.white)
                                    .font(.title2)
                                        .fontWeight(.semibold)
                                
                                Spacer()
                                Text("None expected in next 10 days.").font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.secondary)
                            }
                            
                        }).frame(height: 220 )
                            CustomStackView(titleView: {
                                
                                
                                Label(
                                    title: { Text("HUMIDITY").foregroundColor(.white) },
                                    icon: { Image(systemName: "drop.fill").foregroundColor(.white) }
    )
                                
                            }, contentView: {
                                
                                VStack(alignment:.leading){
                                    Text("45%").font(.title)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        
                                   
                                    Spacer()
                                    Text("None expected in next 10 days.").font(.title3)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.secondary)
                                }
                                
                            }).frame(height: 220 )
                    }
                        HStack{
                        CustomStackView(titleView: {
                            Label(
                                title: { Text("WIND").foregroundColor(.white) },
                                icon: { Image(systemName: "wind").foregroundColor(.white)  }
)
                        }, contentView: {
                            CompassView().frame(height: 170)
                        })
                        CustomStackView(titleView: {
                            Label(
                                title: { Text("PRESSURE").foregroundColor(.white) },
                                icon: { Image(systemName: "barometer").foregroundColor(.white)  }
)
                        }, contentView: {
                          
                            PressureView()
                        })
                        }
                    }
                }
                .padding(.horizontal)
            }.padding(.top,50)
            
            
        }.ignoresSafeArea()
        
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
