//: [Previous](@previous)

import Foundation


struct TimesTable {
    let mutiplier: Int
    subscript(index: Int) -> Int {
        return mutiplier * index
    }
    subscript(key: String) -> Void {
        print("hello", key)
    }
}

let threeTimesTable = TimesTable(mutiplier: 3)
threeTimesTable[6]
threeTimesTable["world"]

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}
