import UIKit

//Lesson:1 Constants and Variables, Base data types

var rigaCity66 = "Riga"
//print(rigaCity66)
//Variable
var swiftString = "Hello, online swift playground"
swiftString = "JAVA"

//String interpolation
print("After continually working on improvements to Objective-C, on June 2, 2014, at the WWDC conference, Apple introduced a new programming language, \(swiftString). The efficiency and simplicity of \(swiftString) will give young programmers incentives to learn, and now they can spread their ideas everywhere: from mobile devices to cloud systems.The development of the current version of the \(swiftString) language began in 2010. ")
//print(swiftString)

swiftString = "Swift"
print("After continually working on improvements to Objective-C, on June 2, 2014, at the WWDC conference, Apple introduced a new programming language, \(swiftString). The efficiency and simplicity of \(swiftString) will give young programmers incentives to learn, and now they can spread their ideas everywhere: from mobile devices to cloud systems.The development of the current version of the \(swiftString) language began in 2010. ")

//Constant
let aboutSwift = """
A Brief History of Swift!
"""
//print(aboutSwift)

//Types of Data
let fullName = "AM"
let age = 34
let dogAge = 1.5
let catAge:Float = 2.9
var height = 193.5
var weight:Float = 92
print("My dog's age is: \(dogAge) and my cat's age is: \(catAge)")

//Casting
let castIntToDouble = Double(age) + dogAge + Double(catAge)
//print(castIntToDouble)


let myself = "I'm "
let student = "student, "
let course = myself + " " + student + "\nand I'm from \t\t" + rigaCity66
//print(course)

var castIntToString = myself + String(age) + " years old"

castIntToString.append("!")
print(castIntToString)







