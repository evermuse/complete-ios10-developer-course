//: Playground - noun: a place where people can play

import UIKit


// for loops - now only for looping through arrays

let array = [8, 4, 8, 1]

for number in array {
    
    print(number)

}


// Challenge - Create an array with 4 names of friends/family & print "Hi there ---- !"

let brotherArray = ["Larry", "Brad", "Tom", "Ken"]

for name in brotherArray {
    
    print ("Hi there \(name)!")
    
}


// Challenge - Change values in an array by adding 1

var numbers = [7, 2, 9, 4, 1]

for (index, value) in numbers.enumerated() {  // odd that this is necessary
    
    numbers[index] += 1
    
}

print (numbers)


// Challenge - Create an array containing 8, 7, 19, 28. Halve each of the values.

var halfArray = [Double]()

halfArray = [8, 7, 19, 28]

for (index, value) in halfArray.enumerated() {
    
    halfArray[index] = value / 2
    
    
}

print (halfArray)