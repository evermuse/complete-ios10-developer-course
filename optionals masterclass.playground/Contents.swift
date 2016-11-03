//: Playground - noun: a place where people can play

import UIKit


// optionals masterclass

// variables that may or may not have values

var number: Int?  // The ? / optionals allow us to use a variable without setting a value / crashing code

print (number)


// example of use

let userEnteredText = "3"

let userEnteredInteger = Int(userEnteredText)

// below is best way to deal with optionals - test to see if they have a value and if not, show error or change behavior

if let catAge = userEnteredInteger {
    
    print (catAge * 7)
    
} else {
    
    // show an error to the user
    
}
