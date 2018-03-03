//
//  usedCarTableViewController.swift
//  NorthGeorgiaHonda
//
//  Created by Noah Phillips on 3/1/18.
//  Copyright © 2018 UNG CSCI3660. All rights reserved.
//

import UIKit

var usedCarList = ["2016 Honda Civic", "2018 Chevrolet Camaro"]
var usedCarIndex = 0

class usedCarTableViewController: UITableViewController {
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return usedCarList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "usedCars", for: indexPath)
        
        cell.textLabel?.text = usedCarList[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        usedCarIndex = indexPath.row
        performSegue(withIdentifier: "toUsedCarDetails", sender: self)
    }
    
}

