//
//  RegisterView.swift
//  todolist
//
//  Created by Jack Boswell on 18/10/23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TLButtonView(title: "Create Account", background: .green) {
                    viewModel.register()
                }
            }
            .offset(y: -50)
        }
        
    }
}

#Preview {
    RegisterView()
}
