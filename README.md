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

<details>
    <summary>Find Index Of Minimum Value In Array</summary>

```swift
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

```
</details>


<details>
    <summary>Palindrome</summary>

```swift
func isPalindrome(text: String) -> Bool {

    let arrayOfText = Array(text)

    for index in 0 ..< text.count / 2 {

        if arrayOfText[index] == arrayOfText[arrayOfText.count - 1] {
            return true
        }
    }

    return false
}

isPalindrome(text: "abbccbba")
isPalindrome(text: "Koray")
```
</details>

<details>
    <summary>Swap Two Number</summary>

```swift
var first = 27
var second = 10

print("First: \(first)")
print("Second: \(second)")

first = first + second
first = first - second
second = first - second

print("First: \(first)")
print("Second: \(second)")
```
</details>


<details>
    <summary>Most Common Item in Array</summary>

```swift
func mostCommonItem(in items: [String]) -> String {

    var itemCounts: [String: Int] = [:]

    for item in items {

        itemCounts[item] = (itemCounts[item] ?? 0) + 1
    }

    return itemCounts.sorted { $0.value > $1.value }.first?.key ?? ""
}

let items = [
    "Koray",
    "Ali",
    "Ali",
    "Umut",
    "Umut",
    "Koray",
    "Ali"
]

mostCommonItem(in: items)
```
</details>

<details>
    <summary>Merge Sort</summary>

```swift
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
```
</details>

<details>
    <summary>Remove Adjacent Duplicates in String</summary>

```swift
func remove(from str: String) -> String {
    var stack = [Character]()
    
    for char in str {
        if let last = stack.last, last == char {
            stack.removeLast()
        }
        else {
            stack.append(char)
        }
    }
    
    return String(stack)
}

remove(from: "aakoraysdassdas")

```
</details>


<details>
    <summary>ZigZag Conversion</summary>

```swift
func zigzagConversion(for text: String, numberOfRows: Int) -> String {

    var array:[[Character]] = []
    var currentRow: Int = .zero
    var shouldDown = false
    
    for char in text {

        if array.count == currentRow {
            array.append([])
        }

        array[currentRow].append(char)
        if (currentRow == numberOfRows - 1) || (currentRow == .zero) {
            shouldDown = !shouldDown
        }
        currentRow = shouldDown ? currentRow + 1 : currentRow - 1
    }
    var output = ""
    for item in array {
        output += String(item)
    }
    return output
}

zigzagConversion(for: "PAYPALISHIRING", numberOfRows: 4)
```
</details>
