import UIKit
//Collections
//Arrays

let arrayOfStrings: [String] = ["a", "b", "c", "a", "a"]
print(arrayOfStrings)

let arrayOfCharacters: [Character] = ["a", "b", "c", "a", "a"]
print(arrayOfCharacters)

var arrayOfInteger: [Int] = [] //te definē tukšu
//var arrayOfInteger = [Int]() šis ir tas pats, pasniedzējam patīk 1.var.

arrayOfInteger = [1, 2, 3, 4, 5]
print(arrayOfInteger[2])

arrayOfInteger = [10, 11, 12, 13]

arrayOfInteger += [14, 15]
arrayOfInteger.append (16)

arrayOfInteger.insert(17, at: 7)

print(arrayOfInteger)


//Set
let setOfStrings: Set = ["a", "b", "c", "d", "e"]
print(setOfStrings.contains("f"))
print(setOfStrings)

let someArray = setOfStrings.sorted()
print(someArray)
print(setOfStrings.sorted(by: >))


//Dictionary - [key : value]

//3veidi, kā inicializēt Dictionary, pasniedzējam patīk 3.v.
//ja nebūtu : pa vidu, tad būtu nodefinēts array
var someStringDictionary = Dictionary<String, String>()
var moreStringIntDict = [String: Int]()
var moreStringDict : [String: String] = [:]


var student = [
    "firstName": "A",
    "lastName": "M",
    "age": "34"
]
print(student)
student["email"] = "kkk@m.com"
print(student)

student.updateValue("aaa@b.com", forKey: "email")
print(student)

student.removeValue(forKey: "email")
print(student)

//Looops
// FOR Loop

var sum = 0

for i in 1...5 {
    print(i)
    sum += i
}

print(sum)

print ("1 * 10 = \(1 * 10)")
print ("2 * 10 = \(2 * 10)")
print ("3 * 10 = \(3 * 10)")

for index in 1...3 {
    print ("\(index) * 10 = \(index * 10)")
}

/*laikam, kad iekš loop raksta index vai i vai kādu citu nosaukumu, nav jāraksta let vai var, tas ir kā indekss */



let base = 2
let power = 3
var result = base

for _ in 1..<power {
    result *= base
}

print("Squaring \(base) to \(power), will be \(result)")

let apples = [
    "red apple",
    "red apple",
    "green apple",
    "red apple",
    "red apple",
    "yellow apple",
    "green apple",
]
//by default will be array

//cikls ies 7x, jo ir 7 vērtības
var basket = 0

for apple in apples {
    if apple == "red apple"{
        basket += 1
    
    }
}

print ("I have \(basket) red apples in my basket")

let numberOfLegs = [
    "spider": 8,
    "dog": 4,
    "ant": 6
]

for (animalName, legsCount)in numberOfLegs {
    print ("\(animalName) has \(legsCount) legs")
}

//animalName = key; legsCount = value

let someText = "Swift"
for char in someText {
    print(char)
}

var count = 5
while count > 0 {
    print("countdown: \(count)")
    count -= 1
}


while true {
    print("counter now is: \(count)" )
    count += 1
    
    if count == 10 {
        break
    }
}



