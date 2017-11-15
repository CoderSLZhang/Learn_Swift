//: [Previous](@previous)

import Foundation


func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

print(greet(person: "Anna"))
print(greet(person: "Brian"))

func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}
greetAgain(person: "wangle")

func sayHelloWorld() -> String {
    return "hello, world"
}

func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}

func greet2(person: String) {
    print("Hello, \(person)!")
}
greet2(person: "zhangshulin")

func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}

func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}

func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }

    return (currentMin, currentMax)
}

func someFunction(argumentLabel parameterName: Int) {

}

func greet(person: String, from hometown: String) -> String {
    return "123"
}

func someFunction(_ firstParametername: Int, secondParameterName: Int) {

}

func someFunction(parameterWithoutDefault: Int, parameterwithDefault: Int = 12) {

}

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }

    return total / Double(numbers.count)

}

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

var mathFunction: (Int, Int) -> Int = addTwoInts

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    
}

func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward: stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

//while currentValue != 0 {
//    print("\(currentValue)")
//    currentValue = moveNearerToZero(currentValue)
//}
print("zeros!")

func chooseStepFunction2(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int {return input + 1}
    func stepBackward(input: Int) -> Int {return input - 1}
    return backward ? stepBackward: stepForward
}

let moveNearerToZero2 = chooseStepFunction(backward: currentValue > 0)

func a() {
    
}

func a(a: Int) {
    
}
