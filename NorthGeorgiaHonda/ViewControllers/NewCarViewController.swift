//
//  NewCarViewController.swift
//  NorthGeorgiaHonda
//
//  Created by Noah Phillips on 3/1/18.
//  Copyright © 2018 UNG CSCI3660. All rights reserved.
//

import UIKit

class NewCarViewController: UIViewController {
    var newCar = NewCarModel()
    var newCarList: [NewCar] = []
    
    @IBOutlet weak var carTypeLabel: UILabel!
    @IBOutlet weak var carPriceLabel: UILabel!
    @IBOutlet weak var carColorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let theNewCar: NewCar = newCar.getCarList()[newCarIndex]
        carTypeLabel.text = (String)(theNewCar.year) + " " + theNewCar.manufacturer! + " " + theNewCar.model!
        carPriceLabel.text = "$" + (String)(theNewCar.price)
        carColorLabel.text = theNewCar.color!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
