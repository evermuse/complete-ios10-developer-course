//: Playground - noun: a place where people can play

import UIKit


// Array

var array = [35, 36, 5, 2]

print (array[2])

array.append(1)

array.remove(at: 1)

array.sort()

print(array)


// Challenge

var newArray = [3.87, 7.1, 8.9]

newArray.remove(at: 1)

newArray.append(3.87 * 8.9)


let mixArray = ["Bryan", 36, true] as [Any]

let stringArray = [String]()


// Dictionary --> have keys and values

var dictionary = ["compter": "something to code on", "coffee": "the best drink ever"]

print \(dictionary["computer"]) // by Rob's course code this produces an error when adding !

print (dictionary.count)

dictionary["pen"] = "Old fashioned writing implement"

dictionary.removeValue(forKey: "computer")

print (dictionary)

// create new dictionary with types set

var gameCharacters = [String: Double]()

gameCharacters["ghost"] = 8.7


// Challenge

let menu = ["pizza": 10.99, "ice cream": 4.99, "salad": 7.99]

print ("The total cost of my meal is \(menu["pizza"]! + menu["ice cream"]!)")



