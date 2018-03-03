//
//  UsedCarViewController.swift
//  NorthGeorgiaHonda
//
//  Created by Noah Phillips on 3/1/18.
//  Copyright © 2018 UNG CSCI3660. All rights reserved.
//

import UIKit

class UsedCarViewController: UIViewController {

    @IBOutlet weak var carTypeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carTypeLabel.text = usedCarList[usedCarIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

