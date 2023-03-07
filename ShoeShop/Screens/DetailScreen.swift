//
//  DetailScreen.swift
//  ShoeShop
//
//  Created by Ali Can Kayaaslan on 7.03.2023.
//

import SwiftUI

struct DetailScreen: View {
    var body: some View {
        ZStack {
            Color(.gray).opacity(0.2)
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                Image("nikeblue")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                DescriptionView()
                    .offset(y: -10)
            }
            
            HStack {
                Text("$1099")
                    .font(.title)
                
                Spacer()
                
                Button(action: {}, label: {
                    Text("Add to Card")
                        .padding()
                        .background(Color.orange.opacity(0.2))
                        .cornerRadius(10)
                })
            }
            .padding()
            .background(Color.white)
            .cornerRadius(40)
            .frame(maxHeight: .infinity, alignment: .bottom)
            
            
        }
    }
}


struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen()
    }
}


struct DescriptionView: View {
    var body: some View {
        VStack(alignment: . leading) {
            Text("Nike Blue Running")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 5)
            
            HStack(spacing: 2){
                ForEach(0 ..< 5) { item in
                    Image(systemName: "star.fill")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.yellow)
                        .font(.system(size: 15))
                }
                Text("(4.9)")
                    .foregroundColor(Color.black.opacity(0.5))
                    .padding(.leading, 8)
                Spacer()
            }
            
            Text("Description")
                .fontWeight(.bold)
                .padding(.vertical, 8)
            
            Text("Nike Running shoes are identified by their midsoles incorporating flexible urethane pouches filled with pressurized gas, visible from the exterior of the shoe and intended to provide cushioning to the underfoot.")
                .font(.system(size: 15))
                .lineSpacing(8)
                .opacity(0.6)
           
            HStack {
                VStack(alignment: .leading) {
                    Text("Colors")
                        .fontWeight(.semibold)
                    HStack {
                        Color(.blue)
                            .frame(width: 24, height: 24)
                            .clipShape(Circle())
                        Color(.cyan)
                            .frame(width: 24, height: 24)
                            .clipShape(Circle())
                        Color(.orange)
                            .frame(width: 24, height: 24)
                            .clipShape(Circle())
                    }
                }
                .padding(.vertical)
                
            }
            
        }
        .padding()
        .padding(.top)
        .background(.white)
        .cornerRadius(40)
    }
}

