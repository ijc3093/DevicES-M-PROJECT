//
//  AppleController.swift
//  DevicES-M
//
//  Created by Ikemefuna Chukwunyerenwa on 4/22/20.
//  Copyright © 2020 Ikemefuna Chukwunyerenwa. All rights reserved.
//

import UIKit

class AppleController {
    /// Used to share MenuController across all view controllers in the app
    static let shared = AppleController()

    
    /// Execute GET request for the categories with /categories
    /// - parameters:
    ///     - completion: The closure which accepts the array of strings returned by JSON
    func fetchCategories(completion: @escaping ([String]?) -> Void) {
        // if data is local use it
        if Product_Data.isLocal {
            completion(Product_Data.categories)
            return
        }
    }
    
    /// Execute GET request from /menu with query parameter — category name
    /// - parameters:
    ///     - categoryName: The name of the category
    ///     - completion: The closure which accepts the MenuItem array returned by JSON
    func fetchMenuItems(categoryName: String = "", completion: @escaping([Product]?) -> Void) {
        
        // if data is local use it
        if Product_Data.isLocal {
            completion(Product_Data.menuItems.filter { $0.category == categoryName || categoryName.isEmpty })
            return
        }

    }
    
    /// Execute POST request to /order with the user's order
    /// - parameters:
    ///     - menuIds: Array of the dishes' IDs in the order
    ///     - completion: A closure that takes the order preparation time
    func submitOrder(menuIds: [Int], completion: @escaping (Int?) -> Void) {
        
        // if data is local fake the preparation time
        if Product_Data.isLocal {
            completion(5 * menuIds.count)
            return
        }
    }
    
    /// Fetch an image from the server
    /// - parameters:
    ///     - url: An image URL
    ///     - completion: A handler that receives UIImage data
    func fetchImage(url: URL, completion: @escaping (UIImage?) -> Void) {
        
        // if data is local use it
        if Product_Data.isLocal {
            completion(UIImage(named: url.relativeString))
            return
        }
    }
}
