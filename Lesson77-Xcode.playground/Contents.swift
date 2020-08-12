import UIKit
// Lesson 7 - OOP (object-oriented programming)

//ctrl A (select all) -> ctrl + I (gets the code text in proper styling, so everything looks readable)

//example without class
//BLOG

let postTitle = "OOP"
let postText = " Text TEXT"
let postAuthor = "Bootcamp"

let postTitle2 = "OOP2"
let postTex2 = " Text TEXT2"
let postAuthor2 = "Bootcamp2" // or = postAuthor

//CLASS

class Post {
    var title = ""
    var text = ""
    var author = ""
}
//title, text, author are class properties

let firstPost = Post() // declaring object of class Post

firstPost.title = "This is my first post"
firstPost.text = "txt"
firstPost.author = "AM"

print("Author \(firstPost.author) has published new post: \(firstPost.title) with text - \(firstPost.text)")

let secondPost = firstPost


secondPost.title = "Second Post"
secondPost.text = "2222"
secondPost.author = "MM"
//secondPost.author if there is not asigned value "MM"// in this case will be the firstPost author because secondPost = firstPost was written before

print("Author \(secondPost.author) has published new post: \(secondPost.title) with text - \(secondPost.text)")

firstPost === secondPost

// class methods - like function just only within class

class Comment {
    var smile = ""
    var author = ""
    var numberOfLikes = 0
    
//INSTANCE METHOD - can be called with object / instance in the code - firstComment.addComment
    
    func addComment() {
        numberOfLikes += 1
    }
}

let firstComment = Comment()

firstComment.smile = "😄" // ctrl + cmd + space  - to get emoji symbols
firstComment.author = "AAC"

firstComment.addComment()
firstComment.addComment()
firstComment.addComment()

let secondComment = Comment()

secondComment.smile = "😋"

secondComment.numberOfLikes = 5

print("The number of comment reactions for: \(firstComment.smile) is \(firstComment.numberOfLikes)")

print("The number of comment reactions for: \(secondComment.smile) is \(secondComment.numberOfLikes)")



class Player {
    var team = "NY"
    var number: Int? = 10 //Int? optional because we are not sure it has number
    var tatoo = true
    
    func description() -> String {
        if let playerNumber = number {
            return "Hello! I'm player of that team:\(team) and my number is \(number)"
        }else {
            return "Hello! I'm player of that team:\(team)"
            }
        
        }
        
    
}

let playerOne = Player()
playerOne.team = "LA"
playerOne.team

//init
class Alien {
    var name: String
    var age: Int? // age is optional, it can be nil
    var hairs: Bool
    
    //prepare default values for our class
    init() {
        name = "12"
        hairs = true
    }
    
    //init with variables
    init(name: String, age: Int?, hairs: Bool) {
        self.name = name
        self.hairs = hairs
        self.age = age
    }
    
    
    func description() -> String {
        if let alienAge = age {
            return "Hello! I'm alien, my name is:\(name) and I'm \(alienAge) years old"
        }else {
            return "Hello! I'm alien, my name is:\(name)"
            }
        
        }
    
}

let alien = Alien()
alien.name

let alienOne = Alien(name: "Tod", age: 3, hairs: false)
alienOne.description()

//Initializers, initialization - process of preparing an instance of the class

class Human {
    var name = ""
    var age = 0
    
    init() {} // if using class without parameters so there is no error
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let personSam = Human(name: "Sam", age: 34) // with initializer, values are given just with calling the class and putting the values in the brackets
personSam.name
personSam.age

let personTom = Human(name: "Tom", age: 22)
personTom.age = 34

let personS = Human()

//INHERITANCE

class Parent {
    var name = ""
    var age = 0
    
    init() {}
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func walk() {
        print("can walk")
    }
    
    func sleep() {
        print("need a sleep")
    }
    
    func eat() {
        print("need to eat")
    }
}


let dad = Parent(name: "Sam", age: 44)
dad.name
dad.age
dad.eat()

class Child: Parent {
    //there will be all the properties and methods from Parent class already inherited
    
    func feeding() {
        if age <= 2 {
            print("need a help")
        }else{
            print("can eat independently")
        }
    }
    
    func education() {
        if age >= 3 && age <= 7{
            print("kinder garden education")
        }else if age < 3{
            print("too early for education")
        }else {
            print("too late for kindergarden education")
        }
    }
}

let littleBoy = Child(name: "Tom", age: 5)
littleBoy.name
littleBoy.sleep()
littleBoy.eat()
littleBoy.education()
littleBoy.feeding()


class SchoolChild:Child {
    //here already is everything from Child class and Parent class
    
    func learning(){
        if age >= 8 && age <= 18 {
            print("it's school time")
        } else{
            print("too early for school")
        }
    }
}

let schoolBoyQ = SchoolChild(name: "Q", age: 8)
schoolBoyQ.learning()
schoolBoyQ.name
schoolBoyQ.feeding()

//Polymorphism -
// can use the method that exists and make to solve different problem, method overriding


class Figure {
    func draw() {}
    
}

class Circle: Figure {
    
    override func draw(){
        print("Draw circle")
    }
}

class Rectangle: Figure {
    override func draw() {
        print("Draw rectangle")
    }
}

class Triangle: Figure {
    override func draw() {
        print("Draw triangle")
    }
}

//class objects
let circle = Circle()
let rectangle = Rectangle()
let triangle = Triangle()

func drawFigure(_ figure: Figure) {
    figure.draw()
}

drawFigure(circle)
drawFigure(triangle)
drawFigure(rectangle)






