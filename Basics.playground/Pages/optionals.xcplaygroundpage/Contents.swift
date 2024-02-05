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

print(checkIfUserIsPremium1())
print(checkIfUserIsPremium2())
print(checkIfUserIsPremium3())
