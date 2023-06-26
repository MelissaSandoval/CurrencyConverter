//
//  AmountView.swift
//  CurrencyConverter
//
//  Created by Melissa on 6/25/23.
//

import UIKit

class AmountView: UIViewController {
    
    var amount = 0
    var logic = Logic()
    

    @IBOutlet weak var usdAmnt: UILabel!
    
    @IBOutlet weak var mxnLabel: UILabel!
    @IBOutlet weak var cadLabel: UILabel!
    @IBOutlet weak var eurLabel: UILabel!
    @IBOutlet weak var jpnLabel: UILabel!
    
    
    @IBOutlet weak var mxnStackView: UIStackView!
    @IBOutlet weak var cadStackView: UIStackView!
    @IBOutlet weak var eurStackView: UIStackView!
    @IBOutlet weak var jpnStackView: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usdAmnt.text = "USD: $\(amount)"
        mxnStackView.isHidden = !logic.mxn
        cadStackView.isHidden = !logic.cad
        eurStackView.isHidden = !logic.eur
        jpnStackView.isHidden = !logic.jpn
        
        mxnLabel.text = String(logic.getmxn(amount))
        cadLabel.text = String(logic.getcad(amount))
        eurLabel.text = String(logic.geteur(amount))
        jpnLabel.text = String(logic.getjpn(amount))

        // Do any additional setup after loading the view.
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
