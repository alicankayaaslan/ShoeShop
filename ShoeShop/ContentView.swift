//
//  ContentView.swift
//  ShoeShop
//
//  Created by Ali Can Kayaaslan on 3.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedIndex: Int = 0
    private let categories = ["All", "Jordan", "Nike", "Dunk", "Vans", "Adidas", "New Balance"]
    
    var body: some View {
        
        
        
        ZStack {
            Color(.gray).opacity(0.15)
                .ignoresSafeArea()
            ScrollView {
                VStack (alignment: .leading) {
                    AppBarView()
                    
                    TagLineView()
                        .padding()
                    
                    SearchAndScanView()
                    
                    //MARK: Category View
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0 ..< categories.count) { i in
                                CategoryView(isActive: i == selectedIndex, text: categories[i])
                                    .onTapGesture {
                                        selectedIndex = i
                                    }
                            }
                        }
                        .padding()
                    }
                    
                    Text("Popular")
                        .font(.system(size: 24, weight: .bold, design: .serif))
                        .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 5) {
                            ForEach(shoes) { shoe in
                                ProductCardRowView(shoes: Popular(name: shoe.name, image: shoe.image, price: shoe.price))
                            }.padding(.trailing)
                        }.padding(.leading)
                    }
                    
                }
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

struct SearchAndScanView: View {
    
    @State private var search: String = ""
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass.circle")
                .padding(.trailing, 8)
            TextField("Search Sneakers", text: $search)
            Button {
                //TO DO
            } label: {
                Image(systemName: "qrcode.viewfinder")
                    .resizable()
                    .frame(width: 28, height: 28)
            }
            
        }.padding()
            .background(Color.white)
            .cornerRadius(10)
            .padding(.horizontal)
    }
}

struct CategoryView: View {
    
    
    let isActive: Bool
    let text: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(isActive ? Color(.black) : Color.black.opacity(0.5))
            
            if (isActive) {
                Color(.black)
                    .frame(width: 15, height: 2)
                    .clipShape(Capsule())
            }
        }.padding(.trailing)
    }
}

