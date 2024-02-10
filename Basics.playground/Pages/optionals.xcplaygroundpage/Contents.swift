import Foundation

/*
 We use "?" after the type to declare an optional variable.
 And we use "??", "if-let" or "guard-let" statment to unwrap that optional
 */

var userIsPremium: Bool? = nil

// Unwrapped with "??"
func checkIfUserIsPremium1() -> Bool {
    return userIsPremium ?? false
}

// Unwrapped with "if-let" statment
func checkIfUserIsPremium2() -> Bool {
    if let userIsPremium {
        return userIsPremium
    }
    return false
}

// Unwrapped with "guard-let" statment
func checkIfUserIsPremium3() -> Bool {
    guard let userIsPremium else {
        return false
    }
    return userIsPremium
}

print("User is premium 1: \(checkIfUserIsPremium1())")
print("User is premium 2: \(checkIfUserIsPremium2())")
print("User is premium 3: \(checkIfUserIsPremium3())")



// Optional chaining. 
// In this case, if username has a value, and first character in username has a value, then return the value of isLowercase, otherwhise return false
let username: String? = ""
let firstCharacterIsLowercased = username?.first?.isLowercase ?? false
print("\nFirst char of username is lowercased: \(firstCharacterIsLowercased)")
