//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Melissa on 6/25/23.
//

import UIKit

class ViewController: UIViewController {

    var logic = Logic()
    
    @IBOutlet weak var usdInput: UITextField!
    @IBOutlet weak var convertButton: UIButton!
    
    
    @IBAction func mxnSwitch(_ sender: UISwitch) {
        if sender.isOn {
            logic.mxn = true
        }
        else {
            logic.mxn = false
        }
    }
    
    @IBAction func cadSwitch(_ sender: UISwitch) {
        if sender.isOn {
            logic.cad = true
        }
        else {
            logic.cad = false
        }
    }
    
    @IBAction func eurSwitch(_ sender: UISwitch) {
        if sender.isOn {
            logic.eur = true
        }
        else {
            logic.eur = false
        }
    }
    
    @IBAction func jpnSwitch(_ sender: UISwitch) {
        if sender.isOn {
            logic.jpn = true
        }
        else {
            logic.jpn = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func convert(_ sender: UIButton) {
        logic.usd = usdInput.text ?? ""
        self.performSegue(withIdentifier: "toAmount", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAmount" {
            let navigation = segue.destination as! AmountView
            navigation.amount = logic.getUSDFromString()
            navigation.logic = logic
        }
    }
}

