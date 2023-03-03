//
//  ContentView.swift
//  ShoeShop
//
//  Created by Ali Can Kayaaslan on 3.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var search: String = ""
    
    var body: some View {
        ZStack {
            Color(.gray).opacity(0.15)
                .ignoresSafeArea()
            VStack (alignment: .leading) {
                AppBarView()
                
                TagLineView()
                    .padding()
                
                HStack {
                    TextField("Search Sneakers", text: $search)
                        .padding()
                }
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding()
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MyButtonStyle: ButtonStyle {
  public func makeBody(configuration: MyButtonStyle.Configuration) -> some View {
    configuration.label
      .compositingGroup()
      .opacity(configuration.isPressed ? 0.5 : 1.0)
  }
}

struct AppBarView: View {
    var body: some View {
        HStack{
            Button {
                //TO DO
            } label: {
                
                Button(action: {}) {
                    Image(systemName: "line.3.horizontal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }.buttonStyle(MyButtonStyle())
            }
            
            Spacer()
            
            Button {
                //TO DO
            } label: {
                Image("ack-pp2")
                    .resizable()
                    .frame(width: 55, height: 55)
                    .cornerRadius(10)
            }
        }.padding()
    }
}

struct TagLineView: View {
    var body: some View {
        Text("Find The \nBest")
            .font(.system(size: 20, weight: .light, design: .monospaced))
        + Text("   Sneaker!")
            .font(.system(size: 20, weight: .bold, design: .serif))
    }
}
