//
//  usedCarTableViewController.swift
//  NorthGeorgiaHonda
//
//  Created by Noah Phillips on 3/1/18.
//  Copyright © 2018 UNG CSCI3660. All rights reserved.
//

import UIKit
var usedCarIndex = 0

class usedCarTableViewController: UITableViewController {
    
    private var usedCarModel = UsedCarModel()
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return usedCarModel.getCarList().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "usedCars", for: indexPath)
        
        let theUsedCar: UsedCar = usedCarModel.getCarList()[indexPath.row]
        
        cell.textLabel?.text = (String)(theUsedCar.year) + " " + theUsedCar.manufacturer! + " " + theUsedCar.model!
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        usedCarIndex = indexPath.row
        performSegue(withIdentifier: "toUsedCarDetails", sender: self)
    }
    
    @IBOutlet weak var usedCarTableView: UITableView!
    override func viewWillAppear(_ animated: Bool) {
        usedCarTableView.reloadData()
        
    }
    override func viewDidLoad() {
        usedCarTableView.reloadData()
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
}
