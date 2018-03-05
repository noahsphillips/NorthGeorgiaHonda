//
//  CustomerTableViewController.swift
//  NorthGeorgiaHonda
//
//  Created by Noah Phillips on 3/1/18.
//  Copyright © 2018 UNG CSCI3660. All rights reserved.
//

import UIKit
var customerIndex = 0
var customerList: [Customer] = []

class CustomerTableViewController: UITableViewController {
//    @IBAction func AddCustomerSegue(_ sender: UIButton) {
//        performSegue(withIdentifier: "addCustomerSegue", sender: self)
//    }
    
    private var customerModel = CustomerModel()
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return customerModel.getCustomerList().count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customerNames", for: indexPath)
        
        let theCustomer: Customer = customerModel.getCustomerList()[indexPath.row]
        
        cell.textLabel?.text = theCustomer.firstName! + " " + theCustomer.lastName!

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        customerIndex = indexPath.row
        
    }
    
    func runSegue() -> Void {
        performSegue(withIdentifier: "toCustomerDetail", sender: self)
    }
    
    @IBOutlet weak var customerTableView: UITableView!
    override func viewWillAppear(_ animated: Bool) {
        customerTableView.reloadData()
        
    }
    override func viewDidLoad() {
        customerTableView.reloadData()
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

}
