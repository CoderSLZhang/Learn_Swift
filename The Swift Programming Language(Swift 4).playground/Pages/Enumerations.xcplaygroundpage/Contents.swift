//: [Previous](@previous)

import Foundation


enum SomeEnumeration {
    
}

enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToHead = CompassPoint.west
directionToHead = .east

directionToHead = .south
switch directionToHead {
case .north:
    print("north")
case .south:
    print("south")
case .east:
    print("east")
case .west:
    print("west")
}

let somePlanet = Planet.earth
switch somePlanet {
case .earth:
    print("earth")
default:
    print("other")
}

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode  = Barcode.upc(8, 85909, 52336, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("upc")
case .qrCode(let productCode):
    print("qrCode")
}

switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
    print("upc")
case let .qrCode(productCode):
    print("qrCode")
}

enum ASCIIControlCharacter: Character {
    case tag = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

ASCIIControlCharacter.tag.rawValue

enum Planet2: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

enum CompassPoint2: String {
    case north, south, east, west
}

let earthsOrder = Planet2.earth.rawValue
let sunsetDirection = CompassPoint2.west.rawValue

let possiblePlanet = Planet2(rawValue: 7)

let positionToFind = 11
if let somePlanet = Planet2(rawValue: positionToFind) {
    switch somePlanet {
    case .earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humans")
    }
} else {
    print("There isn't a planet at postion \(positionToFind)")
}

enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

indirect enum ArithmeticExpression2 {
    case number(Int)
    case addition(ArithmeticExpression2, ArithmeticExpression2)
    case multiplication(ArithmeticExpression2, ArithmeticExpression2)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

enum Test {
    case test1(a: Int, b: Int)
    case test2
}
let t = Test.test1(a: 2, b: 2)
