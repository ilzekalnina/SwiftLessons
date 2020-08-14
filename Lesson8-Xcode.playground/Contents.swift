import UIKit

// Enumeration

var someDay = "Friday"

func setupAlarm() {
    if someDay == "friday" {
        print("set up alarm to 8AM")
    } else {
        print("No alarm for today")
    }
}

setupAlarm()

//printed out No alarm for today, because F and f , it's case sensetive

//to avoid such mistake goes enumeration

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
    //case monday, tuesday, wednesday .... - Arcady doesnt like this kind of declarations, cause it's no t readable
}

var weekday = Weekday.friday

//2version, but also not so readable for declaring
//var weekday: Weekday
//weekday = .friday

func setupBedTime(){
    if weekday == .monday || weekday == .tuesday {
        print("Setup alarm to 7:45AM")
    } else {
        print("Setup alarm to 8AM")
    }
}

setupBedTime()


func setupSleepAlarm() {
    switch weekday {
    case .monday:
        print("Setup alarm to 7:45AM")
    case .tuesday:
        print("Setup alarm to 7:45AM")
    case .wednesday:
        print("Setup alarm to 7:45AM")
    case .thursday:
        print("Setup alarm to 7:45AM")
    case .friday:
        print("Setup alarm to 8AM")
    default:
        print("No alarm!")
    }
}

setupSleepAlarm()

weekday = .monday
setupSleepAlarm()


enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/" // if the value is forgotten to write and is just "case division" it will print out just "division", not the value, beause there is no value assigned.
}

var calc = CalculationType.division
print(calc.rawValue)

enum Planet: Int {
    case mercury, venus, earth, mars, saturn, neptune
    //indexing starts from 0. If declared - case mercury = 1, venus, earth... then indexing starts from 1, 2, 3,...
}

var somePlanet = Planet.earth
print("Earth is the \(somePlanet.rawValue) planet from the sun")

// will print Earth is the 2 planet, because type is Int, and it indexed from 0, 1..
//mercury => 0, venus => 1, earth =>2

let possiblePlanet = Planet(rawValue: 6)
print("The 6th planet is \(possiblePlanet)")


//associated params
enum Weekend {
    case saturday(String)
    case sunday(String, Int, String)
}

var wnd = Weekend.sunday("set bed time at", 7, "AM")
print(wnd)

//Structure
//Struct .. can't inherit properties and functions like in classes
//Struct automatically initializes... no need to write init

//checkers
//example without struct
let playerOne = "playerONe"
let playerOneXPosition = 10
let playerOneYPosition = 8

let playerTwo = "playerTwo"
let playerTwoXPosition = 10
let playerTwoYPosition = 8

func getPositionOnTheGameBoard(from player: String, with x: Int, and y: Int) {
    print("The Position of \(player): x\(x), y\(y)")
}

getPositionOnTheGameBoard(from: playerOne, with: playerOneXPosition, and: playerOneYPosition)
getPositionOnTheGameBoard(from: playerTwo, with: playerTwoXPosition, and: playerTwoYPosition)


//the same just with struct
struct PositionOnBoard {
    var player: String
    var x: Int
    var y: Int
    
    func getPositionOn() {
        print("The Position of \(player): x\(x), y\(y)")
    }
    
}

//object
var playerOnePosition = PositionOnBoard(player: "Player one", x: 10, y: 8)
var playerTwoPosition = PositionOnBoard(player: "Player two", x: 11, y: 3)

playerOnePosition.getPositionOn()
playerTwoPosition.getPositionOn()

class MacBook {
    var name: String
    var year: Int
    var color: String
    
    init(name: String, year: Int, color: String) {
        self.name = color
        self.year = year
        self.color = color
    }
    
    func getSpecs(){
        print("Model: \(name), year: \(year), with color \(color)")
    }
}

let macBookPro = MacBook(name: "MacBookPro", year: 2020, color: "Grey")
macBookPro.getSpecs()

let macBookAir = macBookPro
macBookAir.name = "macBookAir"

macBookAir.getSpecs()
macBookPro.getSpecs()

//both printed out that will be macBookAir, because they both used one memory cell
//to escape such error we will use Struct

struct iPhone {
    var name: String
    var capacity: Int
    var color: String
    func getSpecs(){
        print("Model: \(name), with: \(capacity) GB and with color \(color)")
    }
    
}
let iPhoneXR = iPhone(name: "iPhone XR", capacity: 64, color: "Black")
var  iPhone11 = iPhoneXR  // if will be "let", then there will be given error = can't assign, won't let use the same memory cell, it always makes new memory cell
iPhone11.name = "iPhone11"

iPhoneXR.getSpecs()
iPhone11.getSpecs()

//class is like google docs, everything you can share, edit..
//struct is like local files, you can only work with them.. You need more copies of one object if others want to write in it.. but you won't see the changes of others, with Struct everytime will be new object.

