//
//  UsedCarModel.swift
//  NorthGeorgiaHonda
//
//  Created by Benjamin Denton on 3/4/18.
//  Copyright © 2018 UNG CSCI3660. All rights reserved.
//

import Foundation
class UsedCarModel
{
    var usedCarList: [UsedCar] = []
    
    var carModel: String = ""
    var carYear: Int16 = 0
    var carColor: String = ""
    var carManufacturer: String = ""
    var carPrice: Int16 = 0
    
    func addUsedCar(carModel: String, carYear: Int16, carColor: String, carManufacturer: String, carPrice: Int16)
    {
        let newCar = UsedCar(context: AppDelegate.context)
        newCar.model = carModel
        newCar.manufacturer = carManufacturer
        newCar.year = carYear
        newCar.price = carPrice
        newCar.color = carColor
        
        do{
            try AppDelegate.context.save()
            
        }catch
        {
            print("There is an error in the code")
        }
    }
    func getCarList()-> [UsedCar]
    {
        do {
            
            usedCarList = try AppDelegate.context.fetch(UsedCar.fetchRequest())
            
        }
        catch
        {
            print("Fetching failed")
        }
        
        return usedCarList
    }
}
