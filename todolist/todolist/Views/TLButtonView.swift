//
//  TLButtonView.swift
//  todolist
//
//  Created by Jack Boswell on 18/10/23.
//

import SwiftUI

struct TLButtonView: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButtonView(title: "Value", background: .pink) {
    // action
    }
}
