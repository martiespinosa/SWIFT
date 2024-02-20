import Foundation

for x in 0..<10 {
    print(x)
}

for y in 0...10 {
    print(y)
}

let myArray = ["Alpha", "Beta", "Gamma", "Delta", "Epsilon"]
for item in myArray {
    print(item)
}

for z in myArray.indices {
    print(z)
}

for (index, letter) in myArray.enumerated() {
    print("index: \(index) - letter: \(letter)")
}
