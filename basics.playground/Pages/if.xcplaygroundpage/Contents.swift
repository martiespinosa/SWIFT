import Foundation

var userIsPremium = true
var userIsNew = false
var userAntiquity = 12
var userIsBanned = false

if userIsPremium && userAntiquity % 12 == 0 && !userIsBanned{
    print("You've been \(userAntiquity / 12) year/s with us. We are so happy to work with you annother year.")
} else if userIsNew && !userIsBanned {
    print("You're wellcome here. Hope you like this app.")
} else if userIsBanned {
    print("You're are banned, get out of here.")
}
