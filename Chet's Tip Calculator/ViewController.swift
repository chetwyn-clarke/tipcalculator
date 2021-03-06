//
//  ViewController.swift
//  Chet's Tip Calculator
//
//  Created by Chetwyn on 3/11/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tipPercentageLbl: UILabel!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var tipLbl: UILabel!
    @IBOutlet weak var totalLbl: UILabel!
    @IBOutlet weak var splitDivisionLbl: UILabel!
    @IBOutlet weak var splitDivisionSlider: UISlider!
    @IBOutlet weak var splitTotalLbl: UILabel!
    
    var tip = TipModel(billAmount: 0.0, tipPercent: 0.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTipCalculationValues()
        updateUI()
    }
    
    func setTipCalculationValues() {
        tip.tipPercent = Double(tipPercentageSlider.value)
        tip.billAmount = ((textField.text)! as NSString).doubleValue
        tip.calculateTip()
        tip.calculateSplitBill(amountOfPersons: Double(splitDivisionSlider.value))
    }
    
    func updateUI() {
        tipLbl.text = String(format: "$%0.2f", tip.tipAmount)
        totalLbl.text = String(format: "$%0.2f", tip.totalAmount)
        tipPercentageLbl.text = "Tip: \(Int(tipPercentageSlider.value * 100))%"
        splitDivisionLbl.text = "\(Int(splitDivisionSlider.value))-way Split"
        splitTotalLbl.text = String(format: "$%0.2f", tip.splitAmount)
    }

    @IBAction func billAmountWasChanged(_ sender: Any) {
        setTipCalculationValues()
        updateUI()
    }
    
    @IBAction func tipPercentageWasChanged(_ sender: UISlider) {
        let steps: Float = 100
        let roundedValue = round(sender.value * steps) / steps
        sender.value = roundedValue
        
        setTipCalculationValues()
        updateUI()
    }
    
    @IBAction func splitDivisionWasChanged(_ sender: UISlider) {
        let roundedValue = round(sender.value)
        sender.value = roundedValue
        
        setTipCalculationValues()
        updateUI()
    }
    
    
    
}


