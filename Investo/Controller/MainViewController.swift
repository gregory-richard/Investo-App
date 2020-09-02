//
//  ViewController.swift
//  Investo
//
//  Created by Gregory Richard on 30.08.20.
//  Copyright © 2020 Gregory Richard. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var moneyBrain = MoneyBrain()
    
    @IBOutlet weak var incomeLabel: UILabel!
    @IBOutlet weak var incomeStepper: UIStepper!
    @IBOutlet weak var firstIncomeButton: UIButton!
    @IBOutlet weak var secondIncomeButton: UIButton!
    @IBOutlet weak var thirdIncomeButton: UIButton!
    
    
    @IBOutlet weak var wealthLabel: UILabel!
    @IBOutlet weak var wealthStepper: UIStepper!
    @IBOutlet weak var firstWealthButton: UIButton!
    @IBOutlet weak var secondWealthButton: UIButton!
    @IBOutlet weak var thirdWealthButton: UIButton!
    @IBOutlet weak var fourthWealthButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func incomeStepperPressed(_ sender: UIStepper) {        
        moneyBrain.income = Int(sender.value)
        incomeLabel.text = moneyBrain.incomeString
    }
    
    @IBAction func incomeButtonsPressed(_ sender: UIButton) {
        firstIncomeButton.isSelected = false
        secondIncomeButton.isSelected = false
        thirdIncomeButton.isSelected = false
        sender.isSelected = true
        
        let incomeStep = sender.currentTitle?.dropLast()
        incomeStepper.stepValue = Double(incomeStep!)!
    }

    
    @IBAction func wealthStepperPressed(_ sender: UIStepper) {
        moneyBrain.wealth = Int(sender.value)
        wealthLabel.text = moneyBrain.wealthString
    }
    
    
    @IBAction func wealthButtonsPressed(_ sender: UIButton) {
        firstWealthButton.isSelected = false
        secondWealthButton.isSelected = false
        thirdWealthButton.isSelected = false
        fourthWealthButton.isSelected = false
        sender.isSelected = true
        
        let wealthStep = sender.currentTitle?.dropLast()
        wealthStepper.stepValue = Double(wealthStep!)!
    }
    
    @IBAction func getIncomePressed(_ sender: UIButton) {
        moneyBrain.addIncomeToWealth()
        wealthLabel.text = moneyBrain.wealthString
        wealthStepper.value = Double(moneyBrain.wealth)
        
    }
    
    @IBAction func actionCardButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "mySegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue" {
            let destinationVC = segue.destination as! SecondViewController
        }
    }
    
}
