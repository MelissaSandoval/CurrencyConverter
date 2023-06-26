//
//  Logic.swift
//  CurrencyConverter
//
//  Created by Melissa on 6/25/23.
//

import Foundation
struct Logic {
    var mxn = true
    var cad = true
    var eur = true
    var jpn = true
    var usd = ""
    
    mutating func getmxn(_ amnt: Int) -> Float {
        return Float(amnt) * 17.14
    }
    
    mutating func getcad(_ amnt: Int) -> Float {
        return Float(amnt) * 1.32
    }
    
    mutating func geteur(_ amnt: Int) -> Float {
        return Float(amnt) * 0.92
    }
    
    mutating func getjpn(_ amnt: Int) -> Float {
        return Float(amnt) * 143.43
    }
    
    mutating func getUSDFromString() -> Int {
        return Int(self.usd) ?? 0
    }
}
