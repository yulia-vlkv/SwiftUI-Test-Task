//
//  ContentView.swift
//  SwiftUI_Test_Task
//
//  Created by Iuliia Volkova on 30.08.2022.
//

import SwiftUI

struct LoggingView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 60) {
            Image("logoVK")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
            
            VStack(spacing: 20) {
                VStack(spacing: 0) {
                    TextField("Email or phone", text: $username)
                        .modifier(customTextField())
                    SecureField("Password", text: $password)
                        .modifier(customTextField())
                }
                Button(action: {
                    print("tapped")
                }, label: {
                    Text("Log in")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .font(.system(size: 18))
                        .padding()
                        .foregroundColor(.white)
                })
                .background(Color.accentColor)
                .cornerRadius(16)
                .padding(.horizontal, 30)
            }
        }
    }
}


struct customTextField: ViewModifier {

    func body(content: Content) -> some View {
        content
            .padding()
            .background(.gray.opacity(0.1))
            .cornerRadius(8)
            .overlay(RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray.opacity(0.6), lineWidth: 1))
            .padding(.horizontal, 30)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoggingView()
            .previewDevice("iPhone 11 Pro")
    }
}
