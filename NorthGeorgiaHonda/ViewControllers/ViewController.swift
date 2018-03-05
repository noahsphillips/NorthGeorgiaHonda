//
//  ViewController.swift
//  NorthGeorgiaHonda
//
//  Created by Benjamin Denton on 2/19/18.
//  Copyright © 2018 UNG CSCI3660. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var newCar = NewCarModel()
    var usedCar = UsedCarModel()
    var newCarList: [NewCar] = []
    var usedCarList: [UsedCar] = []
    var customer = CustomerModel()
    
    @IBOutlet weak var carTitle: UITextField!
    @IBOutlet weak var carManufacturer: UITextField!
    @IBOutlet weak var carYear: UITextField!
    @IBOutlet weak var carColor: UITextField!
    @IBOutlet weak var carPrice: UITextField!
    @IBAction func addNewCar(_ sender: UIButton)
    {
        
        let newCarTitle = carTitle.text!
        let newCarManufacturer = carManufacturer.text!
        let newCarYear = (Int16)(carYear.text!)
        let newCarColor = carColor.text!
        let newCarPrice = (Int16)(carPrice.text!)
        
        newCar.addNewCar(carModel: newCarTitle, carYear: newCarYear!, carColor: newCarColor, carManufacturer: newCarManufacturer, carPrice: newCarPrice!)
        
        carTitle.text! = ""
        carPrice.text! = ""
        carYear.text! = ""
        carColor.text! = ""
        carManufacturer.text! = ""
        
        let alert = UIAlertController(
            title: "Success!",
            message: newCarTitle + " Added!",
            preferredStyle: .alert
        )
        
        alert.addAction(
            UIAlertAction(
                title: "Okay",
                style: .default,
                handler: {
                    (action) in self.navigationController?.popViewController(animated: true)
            }
            )
        )
        
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBOutlet weak var usedCarTitle: UITextField!
    @IBOutlet weak var usedCarManufacturer: UITextField!
    @IBOutlet weak var usedCarYear: UITextField!
    @IBOutlet weak var usedCarColor: UITextField!
    @IBOutlet weak var usedCarPrice: UITextField!
    @IBAction func addUsedCar(_ sender: UIButton)
    {
        
        let usedCarTitle = self.usedCarTitle.text!
        let usedCarManufacturer = self.usedCarManufacturer.text!
        let usedCarYear = (Int16)(self.usedCarYear.text!)
        let usedCarColor = self.usedCarColor.text!
        let usedCarPrice = (Int16)(self.usedCarPrice.text!)
        
        usedCar.addUsedCar(carModel: usedCarTitle, carYear: usedCarYear!, carColor: usedCarColor, carManufacturer: usedCarManufacturer, carPrice: usedCarPrice!)
        
        self.usedCarTitle.text! = ""
        self.usedCarManufacturer.text! = ""
        self.usedCarYear.text! = ""
        self.usedCarColor.text! = ""
        self.usedCarPrice.text! = ""
        
        let alert = UIAlertController(
            title: "Success!",
            message: usedCarTitle + " Added!",
            preferredStyle: .alert
        )
        
        alert.addAction(
            UIAlertAction(
                title: "Okay",
                style: .default,
                handler: {
                    (action) in self.navigationController?.popViewController(animated: true)
            }
            )
        )
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBOutlet weak var firstNameInput: UITextField!
    @IBOutlet weak var lastNameInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBAction func touchAddCustomer(_ sender: UIButton) {
        customer.addNewCustomer(customerFirstName: firstNameInput.text!, customerEmail: emailInput.text!, customerPassword: passwordInput.text!, customerLastName: lastNameInput.text!)
        
        lastNameInput.text = ""
        passwordInput.text = ""
        emailInput.text = ""
        
        let alert = UIAlertController(
            title: "Success!",
            message: firstNameInput.text! + " Added!",
            preferredStyle: .alert
        )
        
        firstNameInput.text = ""
        
        alert.addAction(
            UIAlertAction(
                title: "Okay",
                style: .default,
                handler: {
                    (action) in self.navigationController?.popViewController(animated: true)
            }
            )
        )
        
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

