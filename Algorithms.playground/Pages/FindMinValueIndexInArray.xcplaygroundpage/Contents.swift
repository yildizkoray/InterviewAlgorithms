import Foundation

func indexOfMinimum(of array: [Int]) -> Int {
    guard array.count > .zero else { return -1 }
    var minimum = array[0]
    var indexOfMinimum: Int = .zero
    
    for index in 1 ..< array.count {
        if array[index] < minimum {
            minimum = array[index]
            indexOfMinimum = index
        }
    }
    
    return indexOfMinimum
}

let array = [-5, 4, 3, 6, 1, -9, 8]

indexOfMinimum(of: array)
