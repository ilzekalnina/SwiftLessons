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








