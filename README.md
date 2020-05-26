# Interview Algorithms

<details>
    <summary>Binary Search</summary>

```swift
let array = [1, 2, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

func binarySearch(for array: [Int], key: Int) -> Int {
    
    guard array.count != 0 else { return -1 }
    
    let firstIndex = 0
    let lastIndex = array.count - 1
    let middleIndex = lastIndex / 2
    
    if key < array[firstIndex] || key > array[lastIndex] {
        return -1
    }
    
    if key > array[middleIndex] {
        let slice = Array(array[middleIndex + 1 ... lastIndex])
        return binarySearch(for: slice, key: key)
    }
    
    if key < array[middleIndex] {
        let slice = Array(array[firstIndex ... middleIndex - 1])
        return binarySearch(for: slice, key: key)
    }
    
    if key == array[middleIndex] {
        return key
    }
    
    return -1
}
binarySearch(for: array, key: 2)
```
</details>

<details>
    <summary>Factorial</summary>

```swift
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
```
</details>

<details>
    <summary>FizzBuzz</summary>

```swift
func fizzBuzz(for number: Int) {
    
    for index in 1 ... number {
        
        let fizz = index % 3 == 0
        let buzz = index % 5 == 0
        
        switch (fizz, buzz) {
            
        case (true, true):
            print("FizzBuzz")
            
        case (false, true):
            print("Buzz")
            
        case (true, false):
            print("Fizz")
            
        default:
            print(index)
        }
    }
}

fizzBuzz(for: 150)
```
</details>

<details>
    <summary>Fibonacci</summary>

```swift
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
```
</details>


 
