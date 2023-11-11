//
//  ContentView.swift
//  TesterUi
//
//  Created by Bootan Majeed on 2023-11-08.
//

import SwiftUI

struct ContentView: View {
    @State var email = ""
    var body: some View {
        ZStack {
            Color.darkgreen
                .ignoresSafeArea()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,  maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

            ZStack{
               
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.lightgreen, Color.darkgreen]), startPoint: .leading, endPoint: .trailing))
                   
                    .background(Color.gray)
                    .frame(width: 380, height: 300)
                    .opacity(0.2)
                    .cornerRadius(18)
                    .blur(radius: 1)
                    .position(x: 205, y: 450)
            }
            VStack {
                    Image("logio") // Replace "logo" with the name of your logo image asset
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 340, height: 250) //
                  
                
                Spacer()
                
                TextField("Email", text: $email)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 15)
                    .frame(width: 360, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
                    

                SecureField("password", text: $email)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 15)
                    .frame(width: 360, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
                Divider()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Login")
                        .foregroundStyle(Color.white)
                        .frame(width: 360, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.black)
                        .cornerRadius(15)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 10)
                       
                
                })
                Spacer()
                Spacer()
            }
            .padding()
           
        }

    }
}

#Preview {
    ContentView()
}
