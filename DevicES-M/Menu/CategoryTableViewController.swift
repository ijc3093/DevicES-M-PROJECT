//
//  CategoryTableViewController.swift
//  DevicES-M
//
//  Created by Ikemefuna Chukwunyerenwa on 4/22/20.
//  Copyright © 2020 Ikemefuna Chukwunyerenwa. All rights reserved.
//

import UIKit

class CategoryTableViewController: UITableViewController {
    /// Names of the menu categories
    var categories = [String]()
    
    /// Array of menu items to be fetched from the server
    var menuItems = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the menu for all categories
        AppleController.shared.fetchMenuItems() { (menuItems) in
            // if we indeed got the menu items
            if let menuItems = menuItems {
                // compose the list of categories
                for item in menuItems {
                    // get the item's category
                    let category = item.category
                    
                    // add category only if it was not added before
                    if !self.categories.contains(category) {
                        self.categories.append(category)
                    }
                }
                
                // remember the list of items
                self.menuItems = menuItems
                
                // update the table with categories
                self.updateUI(with: self.categories)
            }
        }
        
        
    }
    
    /// Update the categories table
    /// - parameters:
    ///     - categories: Array of categories to display
    func updateUI(with categories: [String]) {
        // since network requests are called on a background thread we need to return to the main thread to update UI immediately
        DispatchQueue.main.async {
            // remember the list of categories to display in the table
            self.categories = categories
            
            // reload the categories table
            self.tableView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // There is only one section — the list of categories
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // number of sections is equal to number of categories we have
        return categories.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // reuse a category prototype cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCellIdentifier", for: indexPath)

        // Configure the cell...
        configure(cell: cell, forItemAt: indexPath)

        return cell
    }
    
    /// Configure the table cell with category data
    /// - parameters:
    ///     - cell: The cell to be configured
    ///     - indexPath: An index path locating a row in tableView
    func configure(cell: UITableViewCell, forItemAt indexPath: IndexPath) {
        // get the name of the category
        let categoryString = categories[indexPath.row]
        
        // make sure it is capitalized to clean up the appearance of categories
        cell.textLabel?.text = categoryString.capitalized
        
        // find the first item in the category for image fetching
        guard let menuItem = menuItems.first(where: { item in
            return item.category == categoryString
        }) else { return }
        
        // fetch the image from the server
        cell.imageView?.image = menuItem.imageURL
    }
    
    // adjust the cell height to make images look better
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    // MARK: - Navigation

    // Need to pass the name of the chosen category before showing the category menu
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // make sure the segue is from category to menu table view controllers
        if segue.identifier == "MenuSegue" {
            // we can safely downcast to MenuTableViewController
            let AppleTableViewController = segue.destination as! AppleTableViewController
            
            // index in the category array is equal to the selected table row number
            let index = tableView.indexPathForSelectedRow!.row
            
            // store the name of the category in the destination menu table view controller
            AppleTableViewController.category = categories[index]
        }
    }

}
