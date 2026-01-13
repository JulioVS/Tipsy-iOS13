//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Julio Errecart on 12/1/26.
//  Copyright © 2026 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var splitValue: String?
    var detailText: String?
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        totalLabel.text = splitValue
        settingsLabel.text = detailText
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
