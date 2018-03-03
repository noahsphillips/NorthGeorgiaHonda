//
//  newCarTableViewController.swift
//  NorthGeorgiaHonda
//
//  Created by Noah Phillips on 3/1/18.
//  Copyright © 2018 UNG CSCI3660. All rights reserved.
//

import UIKit

var newCarList = ["2016 Ford Explorer", "2018 Nissan Sentra"]
var newCarIndex = 0

class NewCarTableTableViewController: UITableViewController {
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return newCarList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newCars", for: indexPath)
        
        cell.textLabel?.text = newCarList[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        newCarIndex = indexPath.row
        performSegue(withIdentifier: "toNewCarDetails", sender: self)
    }
    
}
