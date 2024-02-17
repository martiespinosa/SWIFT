import Foundation

// Structs are fast!
// Structs are stored in the Stack (memory)
// Objects in the Stack are Value types
// Value types are copied & mutated

struct Quiz {
    let title: String
    let dateCreated: Date
    
    // Structs have an implicit init

    // This is a different init (with a default value for dateCreated):
    init(title: String, dateCreated: Date = .now) {
        self.title = title
        self.dateCreated = dateCreated
    }
}

let myQuiz = Quiz(title: "Quiz 1")
print(myQuiz.title)
print(myQuiz.dateCreated)


// --------------------------------------------------


// "Immutable struct" = all "let" constants = NOT mutable = "cannot mutate it!"
struct UserModel {
    let name: String
    let isPremium: Bool
}

var user1 = UserModel(name: "Jhon", isPremium: false)

func markUserAsPremium () {
    print (user1.isPremium)
    user1 = UserModel (name: user1.name, isPremium: true)
    print (user1.isPremium)
}
markUserAsPremium()


// --------------------------------------------------


// "mutable struct (has var)"
struct UserModel2 {
    let name: String
    var isPremium: Bool
}

var user2 = UserModel2(name: "Nick", isPremium: false)

func markUserAsPremium2() {
    print (user2)
    // "mutate" the whole struct, not just the isPremium variable. Proof: if we change user2 to let, it gives a compiler error
    user2.isPremium = true
    print (user2)
}
markUserAsPremium2()


// --------------------------------------------------


// immutable struct
struct UserModel3 {
    let name: String
    let isPremium: Bool
    
    func markUserAsPremium() -> UserModel3 {
        UserModel3(name: name, isPremium: true)
    }
}

var user3 = UserModel3(name: "Phil", isPremium: false)
print(user3)
user3 = user3.markUserAsPremium()
print(user3)


// --------------------------------------------------


// mutable struct
struct UserModel4 {
    let name: String
    private(set) var isPremium: Bool
    
    mutating func markUserAsPremium() {
        isPremium = true
    }
}

var user4 = UserModel4(name: "Nas", isPremium: false)
print(user4)
user4.markUserAsPremium()
print(user4)


// --------------------------------------------------


// It's better UserModel3 than UserModel1 & it's better UserModel4 than UserModel2
// For begining is preferible user UserModel3 and for more advanced is preferibel use UserModel4
