//
//  CalculatorViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var tipRate = 0.1
    var splitNumber = 2.0

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
            tipRate = 0.0
        case "10%":
            tipRate = 0.1
        case "20%":
            tipRate = 0.2
        default:
            tipRate = 0.1
        }
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        splitNumber = sender.value

    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        print(tipRate)
        print(String(format: "%.0f", splitNumber))
        
    }
    
}

