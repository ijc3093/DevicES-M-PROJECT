//
//  Product_Data.swift
//  DevicES-M
//
//  Created by Ikemefuna Chukwunyerenwa on 4/22/20.
//  Copyright © 2020 Ikemefuna Chukwunyerenwa. All rights reserved.
//

import UIKit

/// Used to provide local data for debug purposes
let myImage = "iPhone1.png"
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
            description: "Item Is In Great Cosmetic Condition (4 Out Of 5)",
            price: 559,
            category: "entrees",
            imageURL: UIImage(named: "iPhone1")!
        ),
        Product(
            id: 2,
            name: "iPad1",
            description: "A brand-new, unused, unopened, undamaged item in its original packaging.",
            price: 745,
            category: "entrees",
            imageURL: UIImage(named: "iPad1")!
        ),
        Product(
            id: 3,
            name: "Retina1",
            description: "GREAT CONDITION. Industry leading technicians, warranty and support. This earlier model year Macbook",
            price: 1200,
            category: "entrees",
            imageURL: UIImage(named: "Retina1")!
        ),
        Product(
            id: 4,
            name: "iMac1",
            description: "A brand-new, unused, unopened, undamaged item in its original packaging (where packaging is applicable)",
            price: 899,
            category: "entrees",
            imageURL: UIImage(named: "iMac1")!
        ),
        Product(
            id: 5,
            name: "iPad4",
            description: "A brand-new, unused, unopened, undamaged item in its original packaging.",
            price: 599,
            category: "entrees",
            imageURL: UIImage(named: "iPad4")!
        ),
        Product(
            id: 6,
            name: "Microsoft Surface Pro X 13",
            description: "This Certified Refurbished product is tested and certified to look and work like new.",
            price: 1250,
            category: "appetizers",
            imageURL: UIImage(named: "Retina6")!
        ),
    ]
}

