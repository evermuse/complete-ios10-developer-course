//: Playground - noun: a place where people can play

import UIKit


// Strings

var str = "Hello, playground"

str = "hi, playground"

let otherStr = "Hi, Rob" // otherStr cannot be changed

var name = "Bryan"

print("hello " + name)


// Integer (whole number

var myInt = 8

print(myInt * 2)

print(myInt + 100)

myInt = myInt + 1

myInt = myInt / 5

print("myInt has value \(myInt)")

let age = 36

print("my name is \(name) and I am \(age) years old")


// Doubles and Floats

var a: Double = 8.73

var b: Float = 8.73

var c = 7.12

print(a / c)

// print(a / b) ---> won't work because can't combine two different types

// can convert though

print (Double(myInt) + a)


// Boolean

var gameOver = false

// convert to string

var gameOverString = String(gameOver)


// challenge

var d: Double = 5.76

var e: Int = 8

print("The product of \(d) and \(e) is \(d * (Double(e)))")





