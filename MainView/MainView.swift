//
//  MainView.swift
//  MainView
//
//  Created by eyh.mac on 27.01.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack{
            Spacer()
              Image(systemName: "aqi.low")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                
                Text("Hi Welcome")
                    .font(Font.custom("Bebas Neue", size: 44))
                    
                Text("Fill In The Blanks To Open A New Account")
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .padding()
            
            VStack(spacing: 16){
                CustomField(title: "User Name")
                CustomField(title: "Last Name")
                CustomField(title: "Password")
                
                HStack{
                    Button("Face ID"){}
                        .buttonStyle(RoundedButton(stroke: true))
                    
                    Button("Login"){}
                        .buttonStyle(RoundedButton(stroke: false))
                        .foregroundColor(.black)
                }
            }
            Spacer()
            Button("Forgot Your Password?"){}
                .foregroundColor(.gray)
        }
        .padding()
    }
    
    struct CustomField: View {
        let title: String
        var body: some View {
            HStack{
                Text(title)
                    .foregroundColor(.white)
                
                TextField("", text: .constant(""))
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 16).fill(.white.opacity(0.2)))
        }
    }
    
    struct RoundedButton: ButtonStyle {
        
        var stroke = true
        
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding(.vertical)
                .padding(.horizontal)
                .frame(maxWidth: .infinity)
                .background{
                    if stroke{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.white)
                    } else{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                    }
                }
        }
    }
}

#Preview {
    MainView()
        .preferredColorScheme(.dark)
}
