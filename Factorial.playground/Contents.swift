import UIKit

// MARK: - Recursive

func factorialRecursive(for number: Int) -> Int {
    
    guard number != .zero else { return 1 }
    
    return number * factorialRecursive(for: number - 1)
}

// MARK: - Iterative

func factorialIterative(for number: Int) -> Int {
    
    var sum = 1
    
    guard number != .zero else { return 1 }
    
    for index in 1 ... number {
        sum = sum * index
    }
    
    return sum
}

factorialIterative(for: 5)
factorialRecursive(for: 5)
