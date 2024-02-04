import Foundation

func firstFunc() {
    print("This is my first function")
}
firstFunc()

func myName() -> String {
    return "marti"
}
var name = myName()
print(name)

func withParameters(verified: Bool) {
    if verified {
        print("User is verified")
    } else {
        print("User is not verified")
    }
}
var isVerified = true
withParameters(verified: isVerified)


func guardSomething() {
    var title = "Avengers"
    
    guard title == "Avengers" else {
        print("Not Marvel")
        return
    }
    
    print("Marvel")
}
guardSomething()


// Calculated variables are basically functions (without parameters)
let number1 = 3
let number2 = 5

var calculatedNumber: Int { // Calculated variable
    print("calculating variable...")
    return number1 + number2
}
print(calculatedNumber)
