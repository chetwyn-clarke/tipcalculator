//
//  ViewController.swift
//  Chet's Tip Calculator
//
//  Created by Chetwyn on 3/11/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var tipPercentageLbl: UILabel!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var tipLbl: UILabel!
    @IBOutlet weak var totalLbl: UILabel!
    
    var tip = TipModel(billAmount: 0.0, tipPercent: 0.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func billAmountWasChanged(_ sender: Any) {
        //print("Bill amount changed!")
    }
    
    @IBAction func tipPercentageWasChanged(_ sender: Any) {
        print(tipPercentageSlider.value)
    }
}


