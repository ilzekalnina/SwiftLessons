import UIKit
//Lesson 2//Arithmetic operators
var a = 9
var b = 4
var result = a + b
print(result)
//Reminder
var rem = a % b
print(rem)
//Assignment operator
a = 5
b = 10
var res = a + result
print(res)
a = b
print(a)
a = a + b
// a+=b
print(a)
//Comparison Operators, true or false
//if conditional statement
if (a == b){
    print("statement is true")
} else {
    print("statement is false")
}

/*(a != b)
(a > b)
(a < b)
(a >= b)
(a <= b)*/
//Logical operators
let updateDeniedMessege = "Can't update Xcode"
let updateMessage = "Updated!"
let latestXcodeVersion = false
let latestMacVersion = true
//Logical NOT operator
if !latestXcodeVersion {
    print(updateMessage)
}//Logical AND operator
if latestXcodeVersion && latestMacVersion {
    print(updateMessage)
} else{
    print(updateDeniedMessege)
}//Logical OR operator
if latestXcodeVersion || latestMacVersion {
    print(updateMessage)
} else{
    print(updateDeniedMessege)
}
//--Lesson--2.5----
//Strings and Charslet name: String
var surename = String()
var name = "A"
surename = "M"
let email = ""
//can't changelet exclamationMark: Character = "!"//Concatenate strings
let fullName = name + " " + surename
var myName = "My name is "
myName += fullName
//myName = myName + fullNamemyName.append(exclamationMark)
//Interpolating strings
let aboutString = """
\(myName)
String interpolation is a way to combine variables and constants of different types within a string.
In order to add any variable or constant to a string, you need to insert a backslash, open a parenthesis, enter the name of our variable, close a parenthesis.
"""
//--Lesson--3----
//If else statement
let someLetter: Character = "c"
if someLetter == "A" || someLetter == "a" {
    print("This is A")
}else if someLetter == "B" || someLetter == "b" {
    print("This is A")
}else if someLetter == "C" || someLetter == "c" {
    print("This is C")
}else{
    print("none of them")
}
//: Switch case
let letter = "C"
switch letter {
case "A" , "a":
    print("our leeter is A")
case "B" , "b":
    print("our leeter is B")
case "c", "C":
    print("our leeter is C")
default:
    print("none of them")
}
let planetCount = 8
var countExpression = ""
switch planetCount {
case 0:
    countExpression = "none"
case 1:
    countExpression = "one"
case 2...4:
    countExpression = "a few"
case 5...11:
    countExpression = "several"
case 12...55:
    countExpression = "dozens of"
default:
    countExpression = "many"
}
print("There are \(countExpression) known plantes")
let level: Character = "A"
switch level {
case "A":
    print("You have A level access")
    fallthrough
case "B":
    print("You have B level access")
    fallthrough
case "C":
    print("You have C level access")
default:
    break
}
let color = "Red"
let number = 3
switch color {
case "Red" where number == 2:
    print("Your color is red")
case "Yellow" where number == 2:
    print("Your color is yellow")
case "Green" where number == 1,
     "Brown" where number == 3:
    print("You have 2 color")
default:
    break
}
//: Optionals
var someString = ""
var anotherString: String
var optionalString: String? //can be nil or String value
optionalString = "100w"
var convert = Int(optionalString!)
print(convert ?? 0)
var convertToInt:Int? = 0
var stringNumber = "123r"
//convertToInt = Int(stringNumber)!
if convertToInt != nil {
    print("convertToInt does not contains any value \(convertToInt!)")
}else {
    print("convertToInt is nil")
}
var someNewNumber = "23!"
someNewNumber = "12"
if let actualNumber = Int(someNewNumber){
    print("String \(someNewNumber) has integer value of \(actualNumber)")
}else{
    print("String \(someNewNumber) can't be converted")
}
