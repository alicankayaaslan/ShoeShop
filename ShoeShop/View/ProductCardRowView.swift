//
//  ProductCardRowView.swift
//  ShoeShop
//
//  Created by Ali Can Kayaaslan on 7.03.2023.
//

import SwiftUI

struct ProductCardRowView: View {
    
    var shoes: Popular
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack {
                    ProductCardView(shoes: Popular.init(name: shoes.name, image: shoes.image, price: shoes.price))
            }
            .padding(5)
            .shadow(color: Color.black.opacity(0.2), radius: 5)
        }
    }
}

struct ProductCardRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
