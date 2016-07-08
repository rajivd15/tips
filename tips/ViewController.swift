//
//  ViewController.swift
//  tips
//
//  Created by Rajiv Deshmukh on 7/7/16.
//  Copyright © 2016 Rajiv Deshmukh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    var tipPercentageStr :String?
    var tipPercentage: Double!
    //var tipPercentageStr: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onEditingChanged(sender: AnyObject) {
    
        var tipPercentages = [0.18, 0.2, 0.22]
        
        if tipPercentageStr != nil {
            tipControl.selectedSegmentIndex = -1
            tipPercentage = Double(tipPercentageStr!)!/100
        } else {
            tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        }

        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)

    }
    
    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = NSUserDefaults.standardUserDefaults()
        tipPercentageStr = defaults.stringForKey("Key")
        
    }
}

