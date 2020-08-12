import UIKit

//Functions

func addingTwoNumbers(){
    let a = 3
    let b = 4
    let c = a + b
    print ("c sum is" , c)
}
addingTwoNumbers()

//return type
func addNumber() -> Int { // returns Int value
    let a = 13
    let b = 14
    
    return a + b
}

print(addNumber()) // teoretiski vajadzeja stradat bez print fjas, bet shis playground neatbalsta, tapec vajag print
var result = addNumber()
print(result) // 2 variants kā redzēt, kad fja atgriež vērtību

//Function with argument and parameters
func addNumber(numberOne a: Int, numberTwo b: Int) -> Int {
    return a + b
}
//numberOne - argument, a, b - parameter, and datatype
//argument is just for us to make code more understandable

result = addNumber(numberOne: 90, numberTwo: 10)
print(result)

//two parameters with no name argument
func addNumber(_ a: Int, _ b: Int) -> Int {
    return a + b
}

result = addNumber(80, 5)
print(result)

//same name for these func, but as parameters are different those are different functions: 1st with no parameters, 2nd with parameters, 3rd with parameters with no name


//two parameters with no argument + argument
func addNumber(_ a: Int, plus b: Int) -> Int {
    return a + b
}

result = addNumber(80, plus: 5)
print(result)


// variable parameters - more than one params, no name args
func average(_ numbers: Double...) -> Double { // ... means there are many parameters, no specific count,  and func will return Double type value
    var total = 0.0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

var res = average(80, 5, 10, 4, 9)
print(res)




let someValue = 5
let arrayOfNumbers = [1,2,3,4,5,6,7,8,9]

func filterLessThan(value: Int, numbers: [Int]) -> [Int] {
    var filteredNumbers: [Int] = []
    for number in numbers {
        if number < value {
            filteredNumbers.append(number)
        }
    }
    return filteredNumbers
}

var newResult = filterLessThan(value: someValue, numbers: arrayOfNumbers)
print(newResult)


func filterGreaterOrEqualThan(value: Int, numbers: [Int]) -> [Int] {
    var filteredNumbers: [Int] = []
    for number in numbers {
        if number >= value {
            filteredNumbers.append(number)
        }
    }
    return filteredNumbers
}
newResult = filterGreaterOrEqualThan(value: someValue, numbers: arrayOfNumbers)
print(newResult)

/* šī funkcija strādā Online Swift Playground vidē
func calculateDateValue(from day: Int, _ month: Int, _ year: Int){
    let currentDate = Date()
    var dateComponents = DateComponents()
    dateComponents.day = day
    dateComponents.month = month
    dateComponents.year = year
    let userCalendar = Calendar.current
    if let calculateDate = userCalendar.date(from: dateComponents){
        let dayPassed = userCalendar.dateComponents([.day], from: calculateDate, to: currentDate).day!
        let monthPassed = userCalendar.dateComponents([.month], from: calculateDate, to: currentDate).month!
        let yearPassed = userCalendar.dateComponents([.year], from: calculateDate, to: currentDate).year!
        print("\(yearPassed) years, \(monthPassed) months and \(dayPassed) days have passed since")
    }
}
calculateDateValue(from: 1, 5, 1986)
*/







