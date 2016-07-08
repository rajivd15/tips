//
//  SettingsViewController.swift
//  tips
//
//  Created by Rajiv Deshmukh on 7/7/16.
//  Copyright © 2016 Rajiv Deshmukh. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var defaultTipField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(defaultTipField.text, forKey: "Key")
        defaults.synchronize()
    }
}
