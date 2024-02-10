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



// Optional chaining. 
// En este caso si username no es nil y el primer cacacter no es nil, devolvera true o false según si el primer caracter esta en minúscula o no. Si username es nil o el primer caracter de username es nil devolverá nil.
let username: String? = ""
let firstCharacterIsLowercased: Bool? = username?.first?.isLowercase
print(firstCharacterIsLowercased)
