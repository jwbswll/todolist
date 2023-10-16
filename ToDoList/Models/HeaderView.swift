//
//  HeaderView.swift
//  ToDoList
//
//  Created by Jack Boswell on 16/10/23.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let background: Color
    let angle: Double
    
    var body: some View {
        // Header
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
                
            
            VStack {
                Text(title)
                    .foregroundColor(Color.white)
                    .font(.system(size: 50))
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", subtitle: "Subtitle", background: .blue, angle: 15)
    }
}
