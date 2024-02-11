import Foundation

let userName = "John"
let userIsPremium = false

// This is how we declare a tuple
var userData: (String, Bool) = (userName, userIsPremium)

print(userData.0)
print(userData.1)



// Functions can also return tuples (and receive tuples per parameter)
func getUserInfo() -> (name: String, prem: Bool) {
    return (userName, userIsPremium)
}

print(getUserInfo().name)
print(getUserInfo().prem)
