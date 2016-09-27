//
//  ViewController.swift
//  TipCalculator
//
//  Created by Yarlagadda, Harish on 9/26/16.
//  Copyright © 2016 Yarlagadda, Harish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var amountField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var tipPercentageController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true);
    }
    
    @IBAction func onAmountChange(_ sender: AnyObject) {
        var tipOptions = [0.18, 0.20, 0.22];
        
        //Get the Amount from Amount UI Text Field
        let amount = Double(amountField.text!) ?? 0;
        
        // Get the Tip selected and calcluate the tip and update tip Label
        let tipPercent = tipPercentageController.selectedSegmentIndex;
        let tipAmount = amount * tipOptions[tipPercent];
        tipAmountLabel.text = String(format: "$%.2f",tipAmount);
        
        //Calculate total amount and update total amount label
        let totalAmount = amount + tipAmount;
        totalAmountLabel.text = String(format: "$%.2f", totalAmount);
    }
}

