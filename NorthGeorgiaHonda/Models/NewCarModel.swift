//
//  NewCarModel.swift
//  NorthGeorgiaHonda
//
//  Created by Benjamin Denton on 3/4/18.
//  Copyright © 2018 UNG CSCI3660. All rights reserved.
//

import Foundation
class NewCarModel
{
    var newCarList: [NewCar] = []
    
    var carModel: String = ""
    var carYear: Int16 = 0
    var carColor: String = ""
    var carManufacturer: String = ""
    var carPrice: Int16 = 0
    
    func addNewCar(carModel: String, carYear: Int16, carColor: String, carManufacturer: String, carPrice: Int16)
    {
        let newCar = NewCar(context: AppDelegate.context)
        newCar.model = carModel
        newCar.manufacturer = carManufacturer
        newCar.year = carYear
        newCar.price = carPrice
        newCar.color = carColor
        
        do{
            try AppDelegate.context.save()
            print("Added")
            
        }catch
        {
            print("There is an error in the code")
        }
    }
    func getCarList()-> [NewCar]
    {
        do {
            
            newCarList = try AppDelegate.context.fetch(NewCar.fetchRequest())
            
        }
        catch
        {
            print("Fetching failed")
        }
        
        return newCarList
    }
}

