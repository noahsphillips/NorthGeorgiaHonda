//
//  UsedCarViewController.swift
//  NorthGeorgiaHonda
//
//  Created by Noah Phillips on 3/1/18.
//  Copyright © 2018 UNG CSCI3660. All rights reserved.
//

import UIKit

class UsedCarViewController: UIViewController {
    var usedCar = UsedCarModel()
    var usedCarList: [UsedCar] = []
    
    @IBOutlet weak var carTypeLabel: UILabel!
    @IBOutlet weak var carPriceLabel: UILabel!
    @IBOutlet weak var carColorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let theUsedCar: UsedCar = usedCar.getCarList()[usedCarIndex]
        carTypeLabel.text = (String)(theUsedCar.year) + " " + theUsedCar.manufacturer! + " " + theUsedCar.model!
        carPriceLabel.text = "$" + (String)(theUsedCar.price)
        carColorLabel.text = theUsedCar.color!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

