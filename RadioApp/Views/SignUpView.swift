//
//  SignUpView.swift
//  RadioApp
//
//  Created by Lok Tin Ching on 6/28/21.
//

import SwiftUI

struct SignUpView: View {
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    @EnvironmentObject var model: AppStateModel
    
    var body: some View {
        VStack{
            // Heading
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            // Textfields
            
            VStack {
                TextField("Email Address", text: $email)
                    .modifier(CustomField())
                
                TextField("Username", text: $username)
                    .modifier(CustomField())
                
                SecureField("Password", text: $password)
                    .modifier(CustomField())
            
                Button(action: {
                    self.signUp()
                }, label: {
                    Text("SignUp")
                        .foregroundColor(.black)
                        .frame(width: 220, height: 50)
                        .background(Color.yellow)
                        .cornerRadius(6)
                })
            }
            .padding()
            
            Spacer()
        }
        .navigationBarTitle("Create Account", displayMode: .inline)
    }
    
    func signUp() {
        guard !username.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              password.count >= 6 else {
            return
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
