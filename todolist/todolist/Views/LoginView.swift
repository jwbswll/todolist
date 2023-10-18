//
//  LoginView.swift
//  todolist
//
//  Created by Jack Boswell on 18/10/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List", subtitle: "Get Things Done", angle: 15, background: .pink)
                // Login Form
                
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButtonView(title: "Log In", background: .blue) {
                        viewModel.login()
                    }
                    // Create Account
                    
                }
                VStack {
                    Text("New Around here?")
                    NavigationLink("Create an Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
            }
        }
    }
}

#Preview {
    LoginView()
}
