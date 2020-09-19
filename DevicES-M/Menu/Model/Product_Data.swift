//
//  Product_Data.swift
//  DevicES-M
//
//  Created by Ikemefuna Chukwunyerenwa on 4/22/20.
//  Copyright © 2020 Ikemefuna Chukwunyerenwa. All rights reserved.
//

import Foundation

/// Used to provide local data for debug purposes
struct Product_Data {
    /// Use local data instead of remote server
    static let isLocal = true
    
    /// List of categories the app should return
    static let categories = [
        "appetizers",
        "entrees",
    ]
    
    static let menuItems = [
        Product(
            id: 1,
            name: "iPhone1",
            description: "Seasoned meatballs on top of freshly-made spaghetti. Served with a robust tomato sauce.",
            price: 9,
            category: "entrees",
            imageURL: URL(fileURLWithPath: "iPhone1")
        ),
        Product(
            id: 2,
            name: "iPad1",
            description: "Tomato sauce, fresh mozzarella, basil, and extra-virgin olive oil.",
            price: 10,
            category: "entrees",
            imageURL: URL(fileURLWithPath: "iPad1")
        ),
        Product(
            id: 3,
            name: "Retina1",
            description: "Pacific steelhead trout with lettuce, tomato, and red onion.",
            price: 9,
            category: "entrees",
            imageURL: URL(fileURLWithPath: "Retina1")
        ),
        Product(
            id: 4,
            name: "iMac1",
            description: "Stewed sliced beef with yellow onions and garlic in a vinegar-soy sauce. Served with steamed jasmine rice and sautÃ©ed vegetables.",
            price: 9,
            category: "entrees",
            imageURL: URL(fileURLWithPath: "iMac1")
        ),
        Product(
            id: 5,
            name: "iPad4",
            description: "Delicious chicken simmered alongside yellow onions, carrots, celery, and bay leaves, chicken stock.",
            price: 3,
            category: "entrees",
            imageURL: URL(fileURLWithPath: "iPad4")
        ),
        Product(
            id: 6,
            name: "Italian Salad",
            description: "Garlic, red onions, tomatoes, mushrooms, and olives on top of romaine lettuce.",
            price: 5,
            category: "appetizers",
            imageURL: URL(fileURLWithPath: "Retina6")
        ),
    ]
}

