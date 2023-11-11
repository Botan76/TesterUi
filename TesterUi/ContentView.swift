//
//  ContentView.swift
//  TesterUi
//
//  Created by Bootan Majeed on 2023-11-08.
//

import SwiftUI

struct ContentView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        ZStack {
            Color.darkgreen
                .ignoresSafeArea()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,  maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

            ZStack{
                
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.lightgreen, Color.darkgreen]), startPoint: .leading, endPoint: .trailing))
                
                
                
                    .background(Color.gray)
                    .frame(width: 375, height: 280)
                    .opacity(0.9)
                    .cornerRadius(18)
                    .blur(radius: 1)
                    .padding(.top, 230)
                
                
                VStack {              //main Stack
                    Image("logio")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 340, height: 180) //
                        .padding()
                    
                    Spacer()
//two Text Field
                    TextField("Email", text: $email)
                        .padding(.all, 15)
                        .frame(width: 350, height: 50, alignment: .center)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                    
                    
                    SecureField("password", text: $password)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 15)
                        .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                    Divider()
//Button Login
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Login")
                            .foregroundStyle(Color.white)
                            .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.black)
                            .cornerRadius(15)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 10)
                    })
//Button SignUp
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("New here? Sign Up")
                    })
                    .foregroundColor(.white)
                    
                    
                    Spacer()
               
                    
                    
                    
                    
                }
                .padding()
                
            }
        }

    }
}

#Preview {
    ContentView()
}
