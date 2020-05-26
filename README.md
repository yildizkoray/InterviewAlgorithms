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
    <summary>Fibonacci</summary>

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


 
