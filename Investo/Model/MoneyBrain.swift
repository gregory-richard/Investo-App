//
//  MoneyBrain.swift
//  Investo
//
//  Created by Gregory Richard on 31.08.20.
//  Copyright © 2020 Gregory Richard. All rights reserved.
//

import Foundation

struct MoneyBrain {
    
    var income: Int = 0
    var incomeString: String {
        return String(income) + "$"
    }
    
    var wealth: Int = 0
    var wealthString: String {
        return String(wealth) + "$"
    }

    
    mutating func addIncomeStep (incomeStep: Double) {
        income += Int(incomeStep)
    }
    
    mutating func addWealthStep (wealthStep: Double) {
        wealth += Int(wealthStep)
    }
    
    mutating func addIncomeToWealth() {
        wealth += income
    }
}
