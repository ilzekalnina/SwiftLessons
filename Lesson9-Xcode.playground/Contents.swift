import UIKit

//Lesson 9
// Arkadijs starts with homework from lesson 8
/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */
enum CalculationType: String {
        case addition = "addition"
        case subtraction = "subtraction"
        case multiplication = "multiplication"
        case division = "division"
}

/*
 Exercise 1.1 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int. Than use switch case to calculate and return Int result    var result = numberOne       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")    return result */

func calculateResult(firstNumber numberOne: Int, andSecondNumber numberTwo: Int, withCalculationType calculationType: CalculationType ) -> Int {
    var result = numberOne
    switch calculationType {
    case .addition:
        result += numberTwo
    case .subtraction:
        result -= numberTwo
    case .multiplication:
        result *= numberTwo
    case .division: numberTwo != 0 ? result /= numberTwo: print("can't divide to 0")
    //if number Two is not 0 then goes division

    }
    print("Result:  \(calculationType) \(numberOne) and \(numberTwo) = \(result)")
    return result
}

/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/

let numbOne = 100
let numbTwo = 0

calculateResult(firstNumber: numbOne, andSecondNumber: numbTwo, withCalculationType: CalculationType.addition)
calculateResult(firstNumber: numbOne, andSecondNumber: numbTwo, withCalculationType: CalculationType.subtraction)
calculateResult(firstNumber: numbOne, andSecondNumber: numbTwo, withCalculationType: CalculationType.multiplication)
calculateResult(firstNumber: numbOne, andSecondNumber: numbTwo, withCalculationType: CalculationType.division)


/*
Exercise 2
 Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int Create func getSpecs() print it with elements provided above
 */

struct Car {
    var name: String
    var productionYear: Int
    var horsePower: Int
    
    func getSpecs() {
        print("\(name), \(productionYear) and \(horsePower)")
    }
    
}

/*
Exercise 2.1
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT Than run getSpecs() for audiQ7 and audiTT
 */

let audiQ7 = Car(name: "audiQ7", productionYear: 2016, horsePower: 220)
var audiTT = audiQ7
audiTT.name = "audiTT"

audiQ7.getSpecs()
audiTT.getSpecs()

