//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

// Habib's Way \\
func convertToScientificNotation(num: Float) -> String {
    let numberFormat = NSNumberFormatter()
    numberFormat.numberStyle = NSNumberFormatterStyle.ScientificStyle
    guard let numberString = numberFormat.stringFromNumber(num) else {
        return ""
    }
    
    return numberString
}

convertToScientificNotation(234.24135)


// Mike's Way \\

func mikesWay(number: Float) -> String {
    let numero = abs(number)
    let numeroFormatter = NSNumberFormatter()
    numeroFormatter.numberStyle = NSNumberFormatterStyle.ScientificStyle
    if number > 0 {
        numeroFormatter.negativeFormat = "0.#E0"
    } else {
        numeroFormatter.positiveFormat = "0.#E0"
    }
    numeroFormatter.exponentSymbol = "*10^"
    
    return numeroFormatter.stringFromNumber(number) ?? ""
}

mikesWay(322)
mikesWay(8.9)


// James's Way \\
func jamessWay(number: Float) -> String {
    var power = 0
    var remainingNumber = number
    
    while remainingNumber >= 10 || remainingNumber <= -10 {
        remainingNumber = remainingNumber / 10
        power += 1
    }
    return("\(remainingNumber)*10^\(power)")
}

jamessWay(585)