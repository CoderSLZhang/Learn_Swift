//: [Previous](@previous)

import Foundation


class Room {
    let name: String
    init(name: String) { self.name = name }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber) \(street)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return  nil
        }
    }
}

class Residence {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms() -> String {
        print(numberOfRooms)
        return "ok"
    }
    var address: Address?
}

class Person {
    var residence: Residence?
}

let john = Person()
//let roomCount = john.residence!.numberOfRooms
if let roomCount = john.residence?.numberOfRooms {
    print(roomCount)
} else {
    print()
}

let someAddress = Address()
someAddress.buildingNumber = "29"
someAddress.street = "Acacia Road"
john.residence?.address = someAddress


func createAddress() -> Address {
    print("Function was called.")
    
    let someAddress = Address()
    someAddress.buildingNumber = "29"
    someAddress.street = "Acacia Road"
    
    return someAddress
}
john.residence?.address = createAddress()

john.residence = Residence()
john.residence?.printNumberOfRooms()

if john.residence?.printNumberOfRooms() != nil {
    
} else {
    
}

if (john.residence?.address = someAddress) != nil {
    
}

john.residence?.rooms = [Room(name: "home1")]
john.residence?[0] = Room(name: "home11")
if let firstRoomName = john.residence?[0].name {

} else {

}

let johnsHouse = Residence()
johnsHouse.rooms.append(Room(name: "Living Room"))
johnsHouse.rooms.append(Room(name: "Kitchen"))
john.residence = johnsHouse

if let firstRoomName = john.residence?[0].name {
    
} else {
    
}

var testScores = ["Dave": [86, 82, 84],
                  "Bev": [79, 94, 81]]
testScores["Dave"]?[0] = 91
testScores["Bev"]?[0] += 1
testScores["Brian"]?[0] = 72

if let johnStreet = john.residence?.address?.street {
    
} else {
    
}

let johnAddress = Address()
johnAddress.buildingName = "The Larches"
johnAddress.street = "Laurel Street"
john.residence?.address = johnAddress

if let johnsStreet = john.residence?.address?.street {
    
} else {
    
}

if let buildingIdentifier = john.residence?.address?.buildingIdentifier() {
    
}

if let beginsWithThe = john.residence?.address?.buildingIdentifier()?.hasPrefix("The") {
    
}






