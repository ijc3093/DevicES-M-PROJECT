//
//  Product.swift
//  DevicES-M
//
//  Created by Ikemefuna Chukwunyerenwa on 4/22/20.
//  Copyright © 2020 Ikemefuna Chukwunyerenwa. All rights reserved.
//

import UIKit

// Properties correspond to the keys listed in the API
struct Product {
    var id: Int
    var name: String
    var description: String
    var price: Double
    var category: String
    var imageURL: UIImage
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case price
        case category
        case imageURL
    }
}

// The top key returned by API is called items
struct MenuItems {
    let items: [Product]
}

