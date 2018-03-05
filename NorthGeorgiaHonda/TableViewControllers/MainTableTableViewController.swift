//
//  MainTableTableViewController.swift
//  NorthGeorgiaHonda
//
//  Created by Noah Phillips on 3/4/18.
//  Copyright © 2018 UNG CSCI3660. All rights reserved.
//

import UIKit

class MainTableTableViewController: UITableViewController {
    
    private var customerModel = CustomerModel()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func touchCustomers(_ sender: UIButton) {
        
        let badPasswordAlert = UIAlertController(
            title: "Invalid Password",
            message: "Please try again",
            preferredStyle: .alert
        )
        
        badPasswordAlert.addAction(UIAlertAction(
            title: "Okay",
            style: .default,
            handler: {
                (action) in return
            }
        ))
        
        let alert = UIAlertController(
            title: "Please Log In",
            message: "You must be logged in to see this section. (Default: user: admin, pass: admin)",
            preferredStyle: .alert
        )
        
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
        
        alert.addAction(UIAlertAction(
            title: "Login",
            style: .default,
            handler: {
                (action) in
                let userName = alert.textFields![0].text
                let password = alert.textFields![1].text
                if (self.customerModel.testUser(username: userName!, password: password!)) {
                    self.performSegue(withIdentifier: "toCustomers", sender: self)
                } else {
                    self.present(badPasswordAlert, animated: true, completion: nil)
                }
        }
        ))
        
        present(alert, animated: true, completion: nil)
        
    }

}
