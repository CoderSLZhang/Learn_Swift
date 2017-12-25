//: [Previous](@previous)

import Foundation


class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) is being deinitialized")}
}

class Apartment {
    let unit: String
    init(unit: String) { self.unit = unit }
    weak var tenant: Person?
    deinit { print("ApartApartment \(unit) is being deinitialized") }
}

var john: Person?
var unit4A: Apartment?

john = Person(name: "John Appleseed")
unit4A = Apartment(unit: "4A")

john!.apartment = unit4A
unit4A!.tenant = john

class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit { print("\(name) is being deinitialized") }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { print("Card \(number) is being deinitialized") }
}

var john2: Customer?
john2 = Customer(name: "John Appleseed")
john2!.card = CreditCard(number: 123_456, customer: john2!)

class HTMLElement {
    
    let name: String
    let text: String?
    weak var delegate: CreditCard?
    
    lazy var asHTML: () -> String = { [unowned self] in
        if let text = self.text {
            return "123"
        } else {
            return "456"
        }
    }
    
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    
    lazy var someClosure: () -> String = { [unowned self, weak delegate = self.delegate] in
        return "world"
    }
    
    deinit {
        print("dfdfdfdf")
    }
}




























