//: Playground - noun: a place where people can play

import UIKit


// if statements in Swift

let age = 18

if age > 18 {
    
    print ("You can play!")
    
} else {
    
    print ("You're too young")
    
}


// check username

let name = "rob"

if name == "rob" {
    
    print ("Hi " + name + "! You can play")
    
} else {
    
    print ("Sorry " + name + ", you can't play")
    
}

// 2 if statements with and

if name == "rob" && age >= 18 {
    
    print("you can play")
    
} else if name == "rob" {
    
    print ("Sorry Rob, you need to get older")
    
}

// if statements with or

if name == "rob" || name == "kirsten" {
    
    print ("Welcome " + name)
    
}


// Booleans with if statements

let isMale = true

if isMale {
    
    print("you're male!")
    
}


// login system with username and password variables

let username = "bryanalexander"

let password = "mypassword"

if username == "bryanalexander" && password == "mypassword" {
    
    print ("you're in!")

} else if username != "bryanalexander" && password != "mypassword" {
    
    print ("sorry that's wrong")
    
} else if username == "bryanalexander" {
    
    print ("your password is wrong")
    
} else {
    
    print ("username is wrong")
    
}





