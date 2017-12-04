//: [Previous](@previous)

import Foundation


class Person {
    deinit {
        print("I am a person")
    }
}

class Student: Person {
    deinit {
        print("I am a student")
    }
}

if true {
    let s = Student()
}





