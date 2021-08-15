//
//  SignInView.swift
//  RadioApp
//
//  Created by Lok Tin Ching on 6/28/21.
//

import SwiftUI

struct SignInView: View {
    @State var username: String = ""
    @State var password: String = ""
    
    @EnvironmentObject var model: AppStateModel
    
    var body: some View {
        NavigationView{
            VStack{
                // Heading
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("app app")
                    .bold()
                    .font(.system(size: 34))
                
                // Textfields
                
                VStack {
                    TextField("Username", text: $username)
                        .modifier(CustomField())
                    
                    SecureField("Password", text: $password)
                        .modifier(CustomField())
                
                    Button(action: {
                        self.signIn()
                    }, label: {
                        Text("Sign In")
                            .foregroundColor(.black)
                            .frame(width: 220, height: 50)
                            .background(Color.yellow)
                            .cornerRadius(6)
                    })
                }
                .padding()
                
                Spacer()
                
                // Sign up
                HStack{
                    Text("New to app app?")
                    NavigationLink("Create Account", destination: SignUpView())
                }
            }
        }
    }
    
    func signIn() {
        guard !username.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty,
              password.count >= 6 else {
            return
        }
        
        model.signIn(username: username, password: password)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
