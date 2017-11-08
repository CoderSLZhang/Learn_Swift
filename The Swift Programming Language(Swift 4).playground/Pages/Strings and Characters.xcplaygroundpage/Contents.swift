//: [Previous](@previous)

import Foundation


let someString = "Some string literal value"

let quotation = """
The White Rabbit put on his spectacles. "Where shall I begin, please your majesty?" he asked.

"Begin at the beginning," the King said gravely, " and go on till you come to the end; then stop."
"""

let singleLineString = "These are the same."
let multilineString = """
These are the same.
"""

let softWrappedQuotation = """
The White Rabbit put on his spectacles. "Where shall I begin,\
please your Majesty?" he asked.

"Begin at the beginning," the King said fravely, " and go on \
till you come to the end; then stop."
"""

let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""

let linesWithIndentation = """
    This line doesn't begin with whitespace.
        This line begins with four spaces.
    This line doesn't begin with whitespace.
    """

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
let dollarSign = "\u{24}"
let blackheart = "\u{2665}"
let sparklingHeart = "\u{1f496}"

let threeDoubleQuotes = """
Escaping the first quote \"""
Escaping all three quotes \"\"\"
"""

var emptyString = ""
var anotherEmptyString = String()
if emptyString.isEmpty {
    print("Nothing to see here")
}

var variableString = "Horse"
variableString += " and carriage"

for character in "Dog!🐶" {
    print(character)
}

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

var instruction = "look over"
instruction += string2

let exclamationMark: Character = "!"
welcome.append(exclamationMark)

let badStart = """
one
two
"""

let end = """
three
"""

print(badStart + end)

let goodStart = """
one
two

"""

print(goodStart + end)

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]

for index in greeting.indices {
    print("\(greeting[index]) ", terminator:"")
}

var welcome2 = "hello"
welcome2.insert("!", at: welcome2.endIndex)
welcome2.insert(contentsOf: " there", at: welcome2.index(before: welcome2.endIndex))

welcome2.remove(at: welcome2.index(before: welcome2.endIndex))

let range = welcome2.index(welcome2.endIndex, offsetBy: -6) ..< welcome2.endIndex
welcome2[range]
welcome2.removeSubrange(range)

let greeting2 = "Hello, world!"
let index2 = greeting2.index(of: ",") ?? greeting2.endIndex
let beginning = greeting2[..<index2]
let newString = String(beginning)

let quotation2 = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I"
if quotation2 == sameQuotation {
    print("These two strings are considered equal.")
}

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}

print("\(mansionCount) mansion scenes;\(cellCount) cell scenes")
















