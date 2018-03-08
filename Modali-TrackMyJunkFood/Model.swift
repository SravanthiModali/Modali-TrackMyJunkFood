//
//  FoodRecorder.swift
//  Modali-TrackMyJunkFood
//
//  Created by Modali,Naga Sravanthi on 3/7/18.
//  Copyright © 2018 Modali,Naga Sravanthi. All rights reserved.
//

import Foundation

struct FoodData {
    var Name: String
    var Calories: Double
    var Tally: Int
}


class FoodRecorder {
    var Food : [FoodData]
    
    init(){
        Food = []
        
    }
    
    func loadData() {
        
        Food.append(FoodData(Name: "Popcorn", Calories: 106, Tally: 0))
        Food.append(FoodData(Name: "Coke", Calories: 140, Tally: 0))
        Food.append(FoodData(Name: "Potato Chips", Calories: 152, Tally: 0))
    }
    
    func increaseTally(forItem i:Int) {
        Food[i].Tally += 1
        
    }
    
    func getCalories(forItime i:Int) -> Double {
        var totalCalories:Double = Food[i].Calories * Food[i].Tally
        return totalCalories
    }
    
    func report(forItem i:int) {
        return "The calories consumed for \(Food[i].name) is \(getCalories())."
    }
    
    func totalCalories() -> Double {
        var sumOfCal = 0.0
        for i in Food {
            sumOfCal += Food[i].Calories * Food[i].Tally
        }
        return sumOfCal
    }
    
    func combinedReport() -> String {
        var ItemReport: String = ""
        for i in Food {
            ItemReport += report(i) + "\n"
        }
        return ItemReport + "\n Total calories consumed \(totalCalories())."
    }
    
    func reset() {
        for i in Food {
            Food[i].Tally = 0
        }
    }
}
