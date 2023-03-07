//
//  ProductCardView.swift
//  ShoeShop
//
//  Created by Ali Can Kayaaslan on 7.03.2023.
//

import SwiftUI

struct ProductCardView: View {
    
    var shoes: Popular
    
    var body: some View {
        VStack {
            Image(shoes.image)
                .resizable()
                .scaledToFit()
                .frame(width: 180, height: 180)
                .cornerRadius(10)
            
            Text(shoes.name)
                .multilineTextAlignment(.leading)
                .fontWeight(.bold)
                .padding(.vertical, 2)
            
            
            HStack(spacing: 2) {
                ForEach(0 ..< 5) { item in
                    Image(systemName: "star.fill")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.yellow)
                        .font(.system(size: 13))
                }
                Spacer()
                Text(shoes.price)
            }
        }.frame(width: 173)
            .padding()
            .background(Color.white)
            .cornerRadius(20)
    }
}


struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
