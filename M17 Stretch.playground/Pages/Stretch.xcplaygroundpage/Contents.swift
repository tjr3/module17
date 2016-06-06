//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func convertToScientificNotation(number: Float) -> String {
    let numeroFormatter = NSNumberFormatter()
    numeroFormatter.numberStyle = NSNumberFormatterStyle.ScientificStyle
    
    if number < -100 {
        return ("\(number) * -10^2")
    }
    if number < 0 {
        return ("\(number) * -10^1")
    }
    if number <= 9.0 {
        return ("\(number) * 10^0")
    }
    if number <= 100.0 {
        return("\(number) * 10^1")
    }
    
    return ""
}


convertToScientificNotation(9)
convertToScientificNotation(35)
convertToScientificNotation(12)
convertToScientificNotation(89)
convertToScientificNotation(-8)


