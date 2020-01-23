d// Sam DuBois
// 10-16-19
// Description: Introduction to Swift (Live Demo Draft)
// Hack UMass VII

// Master Code                            DEMO 1
import UIKit

// MARK: Important things to note:

// Swift is a compiled language and not a scripting language like Javascript or Python

// ** Declarations DO NOT requre the use of semicolons. **

// Swift is very powerful and very fun to use



// MARK: Variables
// Like Any other variables in Javascript, Java, Python etc.
var versatileVariableName = "Pizza"



// MARK: Constants
// Similiar to Javascripts 'Const'
let conciseConstantName = "Icecream"



// MARK: Functions
// Declare with the 'func' keyword, use '->' to specify return type

// Function without return type
func doesNotReturnAnything() {
    print("Do Something cool")
}

// Function with return type
func doesReturnSomething() -> String {
    return "Hello World!"
}

// Anonymous functions for variables
var reallyCoolDefinitionOfString: String = {
    return "Hello World (But Cooler) !"
}()



// MARK: if and else statements
// very simple and straightforward

var something = true

if something {
    print("Yay it did something!!") // Prints this
} else {
    print("please do something c'mon")
}

let somethingElse = 5

if somethingElse == 6 {
    print("YAYYY")
} else if somethingElse == 4{
    print("Cool Cool")
} else {
    print("Wowwwwww")   // Prints this
}



// MARK: Enumerations
// Enumerations are very versatile if else statements and conditions

enum sportTeams {
    case pats
    case jets
    case browns
    case broncos
    case bears
    case packers
}

let favoriteTeam: sportTeams = .jets

switch favoriteTeam {
case .jets:
    print("Who even are you?")
default:
    print("This is by far a better team than the jets")
}



// MARK: Custom Objects
// Similiar to how you build it in every other languageg
// Nothing different going on here

struct User {
    let username: String
    let password: String
    let name: String
    let dob: String
}

let mainUser = User(username: "sdubois18", password: "password", name: "Sam DuBois", dob: "06-08-00")

print("\(mainUser.name) is really cool!")

// You can use objects to define other objects!

struct engine {
    var name: String
    var cylinders: Int
    var size: String
}

struct car {
    var engine: engine
    var numberOfDoors: Int
    var model: String
    var name: String
}

