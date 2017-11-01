//
//  ViewController.swift
//  hello world
//
//  Created by David Serfaty on 10/09/2017.
//  Copyright © 2017 DavidSfy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmountTextfield: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var pourcentLabel: UITextField!
    @IBOutlet weak var restePayer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("hello world")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func computeTip(_ sender: UIButton) {
        
        tipLabel.text = String( Float(tipAmountTextfield.text!)! * Float(pourcentLabel.text!)! * 0.01)
    
        restePayer.text = String(Float(tipAmountTextfield.text!)! - Float(tipLabel.text!)!)
}
}

