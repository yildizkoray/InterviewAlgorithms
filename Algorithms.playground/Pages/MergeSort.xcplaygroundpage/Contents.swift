import Foundation

func sort(for array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    
    let numberOfItems = array.count
    let middleIndex = numberOfItems / 2
    
    let left = sort(for: Array(array[.zero ..< middleIndex]))
    let right = sort(for: Array(array[middleIndex ..< numberOfItems]))
    
    return merge(left: left, right: right)
}

func merge(left leftArray: [Int], right rightArray: [Int]) -> [Int] {
    
    var leftIndex: Int = .zero
    var rightIndex: Int = .zero
    
    var orderedArray = [Int]()
    orderedArray.reserveCapacity(leftArray.count + rightArray.count)
    
    while leftIndex < leftArray.count && rightIndex < rightArray.count {
        if leftArray[leftIndex] < rightArray[rightIndex] {
            orderedArray.append(leftArray[leftIndex])
            leftIndex += 1
        }
        else if leftArray[leftIndex] > rightArray[rightIndex] {
            orderedArray.append(rightArray[rightIndex])
            rightIndex += 1
        }
        else {
            orderedArray.append(leftArray[leftIndex])
            leftIndex += 1
            orderedArray.append(rightArray[rightIndex])
            rightIndex += 1
        }
    }
    
    while leftIndex < leftArray.count {
        orderedArray.append(leftArray[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < rightArray.count {
        orderedArray.append(rightArray[rightIndex])
        rightIndex += 1
    }
    
    return orderedArray
}

let unsorted = [2, 1, 5, 3, 345, 23, 32, 1, 23, 213, 345]
let sorted = sort(for: unsorted)
