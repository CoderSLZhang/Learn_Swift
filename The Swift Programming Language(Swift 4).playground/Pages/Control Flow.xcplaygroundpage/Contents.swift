//: [Previous](@previous)

import Foundation


let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

let minutes = 60
for tickMark in 0..<minutes {
    
}

let minuteInterval = 5
for tickMark in stride(from: 0, to:minutes, by:minuteInterval) {
    
}

let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    
}

let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

var square = 0
var diceRoll = 0
while square < finalSquare {
    diceRoll += 1
    if diceRoll == 7 {
        diceRoll = 1
    }
    
    square += diceRoll
    if square < board.count {
        square + board[square]
    }
}

repeat {
    
} while finalSquare > 25

let temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
    print()
} else if temperatureInFahrenheit >= 86 {
    print()
} else {
    print()
}

let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print()
case "z":
    print()
default:
    print()
}

let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a", "A":
    print()
default:
    print()
}

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}

let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print()
case (_, 0):
    print()
case (0, _):
    print()
case (-2...2, -2...2):
    print()
default:
    print()
}

let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print()
case (0, let y):
    print()
case let (x, y):
    print()
}

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print()
case let (x, y) where x == -y:
    print()
case let (x, y):
    print()
}

let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print()
default:
    break;
}

let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u"]
for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue;
    } else {
        puzzleOutput.append(character)
    }
}

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, an also"
    fallthrough
default:
    description += " an integer"
}

//gameLoop: while square != finalSquare {
//    diceRoll += 1
//    if diceRoll == 7 {
//        diceRoll = 1
//    }
//
//    switch square + diceRoll {
//    case finalSquare:
//        break gameLoop
//    case let newSquare where newSquare > finalSquare:
//        continue gameLoop
//    default:
//        square += diceRoll
//        square += board[square]
//    }
//}

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    
    print("Hello \(name)")
    
    guard let location = person["location"] else {
        print()
        return
    }
    
    print()
}

if #available(iOS 11, *) {
    
} else {
    
}



























