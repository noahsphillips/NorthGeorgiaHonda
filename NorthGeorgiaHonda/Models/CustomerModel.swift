//
//  CustomerModel.swift
//  NorthGeorgiaHonda
//
//  Created by Noah Phillips on 3/3/18.
//  Copyright © 2018 UNG CSCI3660. All rights reserved.
//

import Foundation
import CoreData
class CustomerModel
{
    var customerList: [Customer] = []
    
    var customerFirstName: String = ""
    var customerEmail: String = ""
    var customerPassword: String = ""
    var customerLastName: String = ""
    
    func addNewCustomer(customerFirstName: String, customerEmail: String, customerPassword: String, customerLastName: String)
    {
        let newCustomer = Customer(context: AppDelegate.context)
        newCustomer.firstName = customerFirstName
        newCustomer.lastName = customerLastName
        newCustomer.email = customerEmail
        newCustomer.password = customerPassword
        
        do{
            try AppDelegate.context.save()
            
        }catch
        {
            print("There is an error in the code")
        }
    }
    func getCustomerList()-> [Customer]
    {
        do {
            
            customerList = try AppDelegate.context.fetch(Customer.fetchRequest())

        }
        catch
        {
            print("Fetching failed")
        }
        
        return customerList
    }
    func testUser(username: String, password: String) -> Bool {
        
        if (username == "admin" && password == "admin") {
            return true
        }
        
        return false
    }
    
}

