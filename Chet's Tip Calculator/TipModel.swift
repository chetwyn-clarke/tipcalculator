//
//  TipModel.swift
//  Chet's Tip Calculator
//
//  Created by Chetwyn on 3/14/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import Foundation

class TipModel {

    private var _billAmount: Double = 0
    private var _tipPercent: Double = 0
    private var _tipAmount: Double = 0
    private var _totalAmount: Double = 0
    private var _splitAmount: Double = 0
    
    var billAmount: Double {
        get {
            return _billAmount
        } set {
            _billAmount = newValue
        }
    }
    
    var tipPercent: Double {
        get {
            return _tipPercent
        } set {
            _tipPercent = newValue
        }
    }

    var tipAmount: Double {
        return _tipAmount
    }

    var totalAmount: Double {
        return _totalAmount
    }
    
    var splitAmount: Double {
        return _splitAmount
    }
    
    init(billAmount: Double, tipPercent: Double) {
        self._billAmount = billAmount
        self._tipPercent = tipPercent
    }
    
    func calculateTip() {
        _tipAmount = billAmount * tipPercent
        _totalAmount = billAmount + tipAmount
    }
    
    func calculateSplitBill(amountOfPersons: Double) {
        _splitAmount = _totalAmount / amountOfPersons
    }
    
    

}
