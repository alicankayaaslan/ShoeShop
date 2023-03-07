//
//  Shoe.swift
//  ShoeShop
//
//  Created by Ali Can Kayaaslan on 7.03.2023.
//

import Foundation
import SwiftUI

//Popular Model

struct Popular: Identifiable {
    var id = UUID().uuidString
    var name: String
    var image: String
    var price: String
}

var shoes = [
    
    Popular(id: "JordanBO", name: "Jordan Blue Orange", image: "jordanblueorange", price: "$1299"),
    Popular(id: "AirForce1", name: "Air Force 1", image: "airforce1", price: "$299"),
    Popular(id: "JordanWhite", name: "Jordan 3White", image: "jordanwhite", price: "$1499"),
    Popular(id: "JordanCyan", name: "Jordan Cyan", image: "jordancyan", price: "$999"),
    Popular(id: "NikeAM", name: "Nike AirMax", image: "nikeairmax", price: "$849")
    
]


