//
//  LoginView.swift
//  ThreadsClone
//
//  Created by Deyvison Borges on 17/08/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password  = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("threads-app-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                
                VStack {
                    TextField("Enter your email", text: $email)
                    SecureField("Enter your password", text: $password)
                }
                
                NavigationLink {
                    Text("Forgot password")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
