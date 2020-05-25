import UIKit

// MARK - Recursive

func fibonacciRecursive(for number: Int) -> Int {

    guard number > 1 else { return number}
    return fibonacciRecursive(for: number - 1) + fibonacciRecursive(for: number - 2)
}

fibonacciRecursive(for: 7)

// MARK - Iterative

func fibonacciIterative(for number: Int) -> Int {
    var first = 0
    var second = 1
    
    guard number > 1 else { return number }
    
    for _ in 2 ... number {
        let total = first + second
        first = second
        second = total
    }
    return second
}

fibonacciIterative(for: 7)

