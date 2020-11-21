//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Shi Tao Luo on 11/14/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SegmentedControl: UISegmentedControl!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get initial bill amount
        let bill = Double (billTextField.text!) ?? 0
        let tipPercentage = [0.15,0.18,0.20]
        
        //calculate tip and total
        let tip = bill * tipPercentage[SegmentedControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update tip and total label
        tipPercentageLabel.text = String (format: "$%.2f", tip)
        totalLabel.text = String (format: "$%.2f", total)
        
    }
    
}

