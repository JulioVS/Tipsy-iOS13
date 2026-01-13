//
//  CalculatorViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var tipPercentage: Double = 0.10
    var numberOfPeople: Double = 2.00
    var splitValue: Double = 0.00
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        switch sender.currentTitle {
        case "0%":
            tipPercentage = 0.0
        case "10%":
            tipPercentage = 0.1
        case "20%":
            tipPercentage = 0.2
        default:
            tipPercentage = 0.1
        }
        
        billTextField.endEditing(true)
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        numberOfPeople = sender.value

    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        print(tipPercentage)
        print(String(format: "%.0f", numberOfPeople))
        print(billTextField.text!)
        
        let billValue: Double = Double(billTextField.text!) ?? 0.0
        let tipValue: Double = billValue * tipPercentage
        let totalValue: Double = billValue + tipValue
        
        splitValue = totalValue / numberOfPeople
        
        print("Bill is $ \(billValue), \(tipPercentage*100) % Tip is $ \(tipValue), Total is $ \(totalValue), Split is $ \(splitValue) between \(numberOfPeople) people")

        self.performSegue(withIdentifier: "goToResults", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResults" {
            
            let resultsVC = segue.destination as! ResultsViewController
            
            resultsVC.splitValue = String(format: "%.2f", splitValue)
            resultsVC.detailText = "Split between \(Int(numberOfPeople)) people, with \(Int(tipPercentage*100))% tip."
            
        }
        
    }
    
}

