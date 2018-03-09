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
    
    var firstLoad : Bool = true
    
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
    
    func getCalories(forItem i:Int) -> Double {
        var totalCalories:Double = Food[i].Calories * Double(Food[i].Tally)
        return totalCalories
    }
    
    func report(forItem i:Int) -> String {
        return "The calories consumed for \(Food[i].Name) is \(getCalories(forItem: i))."
    }
    
    func totalCalories() -> Double {
        var sumOfCal = 0.0
        for i in Food {
            sumOfCal += i.Calories * Double(i.Tally)

        }
        return sumOfCal
    }
    
    func combinedReport() -> String {
        var ItemReport: String = ""
        for i in 0..<Food.count {
            ItemReport += report(forItem: i) + "\n"
        }
        return ItemReport + "\n Total calories consumed \(totalCalories())."
    }
    
    func reset() {
        for i in 0..<Food.count {
            Food[i].Tally = 0
        }
    }
}
