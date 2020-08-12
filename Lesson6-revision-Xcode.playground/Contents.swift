import UIKit

// Lesson 6 Revision

//Arcady version of HT6 at the end

// for funcions name it's best to use verb of what it is doing
// function = method - the same thing

func multiplyTwoNumbers() {
    print("Result:", 3 * 3)
    
}


// RETURN always must be at the end of the function

// function with no arguments and no parameters
func multiplyNumbers() -> Int {
    let a = 5
    let b = 2
    
    return a * b
    
}

multiplyTwoNumbers() // prints the result of a * b

var res = multiplyNumbers()
print(res)


//function with 2 arguments and 2 parameters
//the same name, but as there are arguments, it is not the same

func multiplyNumbers(firstNumber numA: Int, secondNumber numB: Int) -> Int {
    return numA * numB
}

res = multiplyNumbers(firstNumber: 5, secondNumber: 6) // arguments are used
print(res)

// two parameters without arguments
func multiplyNumbers(numberA: Int, numberB: Int) -> Int {
    return numberA * numberB
}

res = multiplyNumbers(numberA: 5, numberB: 3)
print(res)

//two parameters and 2 no name arguments ( _ )

func multiplyNumbers( _ numberA: Int, _ numberB: Int) -> Int {
    return numberA * numberB
}

res = multiplyNumbers (4, 5)
print(res)
// if there is just numbers to give, no needed explanation for yourself, then you can use no name arguments

// also can be two parameters and just one argument for just one parameter


//Arcady home task 6

// Ex.1

let myTeam = "Girls Team"
let resultsOfGames = [
    "Brooklyn Nets": ["99:89","109:99"],
    "Dallas Mavericks": ["87:93","104:97"],
    "Washington Wizards": ["117:112","107:122"]
]
//v1
for (teamName, results) in resultsOfGames {
    for i in 0..<results.count {
        print("\(myTeam) Vs \(teamName) scored: \(results[i])")
    }
}
//v2
for (teamName, results) in resultsOfGames {
    for result in results {
        print("\(myTeam) Vs \(teamName) scored: \(result)")
    }
}
//it takes key and it's value, key is put in teamName, value (in this case - array) is put in results
// For loop runs until all the lines in dictionary resultOfGames is read
//inner for loop runs 2 times, because array holds 2 values (2 results of games)
// i stands for index, beause array is indexed starting from 0, 1,2,...etc.

// Ex.2

var wallet = [5, 10, 20, 50, 100, 200, 500]

func calculateCash(_ wallet: [Int]) -> Int {
    var totalCash = 0
    for bankNote in wallet {
        totalCash += bankNote
    }
    return totalCash
}

print("Total amount in my wallet is \(calculateCash(wallet))")


// Ex. 3

let number = 23

func isEvenNumber(_ number: Int) -> Bool {
    return number % 2 == 0
    
}

print("Provided number \(number) is even: \(isEvenNumber(number))")


// Ex. 4

func createArray(from start: Int, to end: Int) -> [Int] {
    var array = [Int]()
    
    for count in start...end {
        array.append(count)
        
    }
    
    return array
}

var array = createArray(from: 1, to: 100)
print(array)


// Ex. 5
/*
// firstIndex not working here :(
for number in array {
    if isEvenNumber(number) {
        if let index = array.firstIndex(of: number){
            array.remove(at: index)
        }
            
    }
}
print(array)
*/










