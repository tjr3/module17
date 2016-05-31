//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func convertToScientificNotation(number: Float) -> String {
    if number < 0 {
        return ("\(number) * -10^1")
    }
    if number <= 9.0 {
        return ("\(number) * 10^0")
    }
    if number <= 20.0 {
        return("\(number) * 10^1")
    }
    if number <= 40.0 {
        return ("\(number) * 10^3")
    }
    if number <= 60.0 {
        return ("\(number) * 10^5")
    }
    if number >= 70 {
        return ("\(number) * 10^7")
    }
    
    return ""
}


convertToScientificNotation(9)
convertToScientificNotation(35)
convertToScientificNotation(12)
convertToScientificNotation(89)
convertToScientificNotation(-8)
