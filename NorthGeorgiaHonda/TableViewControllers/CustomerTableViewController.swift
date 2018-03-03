//
//  CustomerTableViewController.swift
//  NorthGeorgiaHonda
//
//  Created by Noah Phillips on 3/1/18.
//  Copyright © 2018 UNG CSCI3660. All rights reserved.
//

import UIKit

var customerList = ["Noah", "Ben"]
var customerIndex = 0

class CustomerTableViewController: UITableViewController {

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return customerList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customerNames", for: indexPath)
        
        cell.textLabel?.text = customerList[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        customerIndex = indexPath.row
        
        let alert = UIAlertController(
            title: "Please Log In",
            message: "You must be logged in to see this section.",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(
            title: "Login",
            style: .default,
            handler: {
                (action) in self.runSegue()
                
        }
        ))
        
        alert.addAction(
            UIAlertAction(
                title: "Cancel",
                style: .cancel,
                handler: {
                    (action) in print("Cancelled")
            }
            )
        )
        
        alert.addTextField {
            (textField) in
            textField.placeholder = "Enter Your Username"
            textField.isSecureTextEntry = false
        }
        
        alert.addTextField {
            (textField) in
            textField.placeholder = "Enter Your Password"
            textField.isSecureTextEntry = true
        }
        
        present(alert, animated: true, completion: nil)
        
    }
    
    func runSegue() -> Void {
        performSegue(withIdentifier: "toCustomerDetail", sender: self)
    }

}
