import UIKit


//Lesson 3
//If else statement

let someLetter: Character = "c"
print(someLetter)

if someLetter == "A" || someLetter == "a" {
    print ("Letter is a")
} else if someLetter == "B" || someLetter == "b" {
    print ("Letter is b")
} else if someLetter == "C" || someLetter == "c" {
    print("Letter is c")
} else {
    print("None of them is \(someLetter)")
}


//switch case

let letter = "D"

switch letter {
    case "A", "a":
    print("our letter is A")
    case "B", "b":
    print("our letter is B")
    case "C", "c":
    print("our letter is C")
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
    case 5...10:
    countExpression = "several"
    case 12...50:
    countExpression = "dozens or more"
    default:
    countExpression = "don't know ?!"
    
}

print("There are \(countExpression) known planets")

//vel 1 piem.

let level: Character = "A"

switch level {
    case "C":
    print("You have a C level access")
    fallthrough
    case "B":
    print("You have a B level access")
    fallthrough
    case "A":
    print("You have a A level access")
    default:
    break
}


let color = "Red"
let number = 3

switch color {
    case "Red" where number == 2:
    print("Your color is wrong")
    case "Red" where number == 3:
    print("Your color is right")
    default:
    break
}




//optionals
/*
var someString = " "
var anotherString: String
*/
/*pagaidām anotherString vēl nav nekādas vērtības, neko nevarēs izdrukāt,
tas ir tikai nodefinēts
someString ir vērtība - tukšums(space)
*/

var optionalString: String?
optionalString = "100"

var convert = Int(optionalString!)
print(convert ?? 6)
  
  
var toInt: Int? = 0
var stringNumber = "123r"
toInt = Int(stringNumber)
print(toInt ?? 0)




//vel piemers
var someNewNumber = "23!"
//someNewNumber = "10"

if let actualNumber = Int(someNewNumber) {
    print("String of \(someNewNumber) has an integer value of \(actualNumber)")
    }
    else {
    print("String of \(someNewNumber) can't be converted")
    }

  
  
  
  
  
  
  
    
