//: Playground - noun: a place where people can play

import UIKit


// while loop

var i = 1

while i < 10 {
    
    print (i)
    
    i += 1
    
}


// challenge - display the first 20 numbers in the 7 times table

var j = 1

while j <= 20 {
    
    print (j * 7)
    
    j += 1
    
}


// challenge - use a while loop to add one to each of the values in the array

var array = [7, 23, 98, 1, 0, 763]

i = 0

while i < array.count {
    
    array[i] += 1
    
    i += 1
    
}

print (array)