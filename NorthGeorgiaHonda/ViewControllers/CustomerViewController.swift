//
//  CustomerViewController.swift
//  NorthGeorgiaHonda
//
//  Created by Noah Phillips on 3/1/18.
//  Copyright © 2018 UNG CSCI3660. All rights reserved.
//

import UIKit

class CustomerViewController: UIViewController {

    @IBOutlet weak var customerNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    var customerModel = CustomerModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let theCustomer: Customer = customerModel.getCustomerList()[customerIndex]
        customerNameLabel.text = theCustomer.firstName! + " " + theCustomer.lastName!
        emailLabel.text = theCustomer.email!
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
