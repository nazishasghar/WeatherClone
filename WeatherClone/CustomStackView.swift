//
//  CustomStackView.swift
//  WeatherClone
//
//  Created by Nazish Asghar on 04/07/21.
//

import Foundation
import SwiftUI

struct CustomStackView<Title : View, Content : View> : View {
    var title : Title
    var content : Content
    init(@ViewBuilder titleView : @escaping() -> Title,@ViewBuilder contentView : @escaping() -> Content) {
        self.title = titleView()
        self.content = contentView()
    }
    var body: some View{
        VStack(spacing:0){
            title.font(.callout)
                .lineLimit(1)
                .frame(height: 38)
                .frame(maxWidth:.infinity , alignment: .leading)
                .padding(.leading)
                .background(Color.secondary.opacity(0.4))
                .clipShape(CustomCorner(corner: [.topLeft,.topRight], radius: 12))
                
            VStack{
                Divider()
                content.padding()
                    
            }.background(Color.secondary.opacity(0.4))
            .clipShape(CustomCorner(corner: [.bottomLeft,.bottomRight], radius: 12))
                
        }
    }
}

