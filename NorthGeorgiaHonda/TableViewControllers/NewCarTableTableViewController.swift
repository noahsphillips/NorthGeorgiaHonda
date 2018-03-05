//
//  newCarTableViewController.swift
//  NorthGeorgiaHonda
//
//  Created by Noah Phillips on 3/1/18.
//  Copyright © 2018 UNG CSCI3660. All rights reserved.
//

import UIKit

var newCarIndex = 0

class NewCarTableTableViewController: UITableViewController {
    
    private var newCarModel = NewCarModel()
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return newCarModel.getCarList().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newCars", for: indexPath)
        
        let theNewCar: NewCar = newCarModel.getCarList()[indexPath.row]
        
        cell.textLabel?.text = (String)(theNewCar.year) + " " + theNewCar.manufacturer! + " " + theNewCar.model!
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        newCarIndex = indexPath.row
        performSegue(withIdentifier: "toNewCarDetails", sender: self)
    }
    
    @IBOutlet weak var newCarTableView: UITableView!
    override func viewWillAppear(_ animated: Bool) {
        newCarTableView.reloadData()
        
    }
    override func viewDidLoad() {
        newCarTableView.reloadData()
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
}
