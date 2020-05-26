import Foundation

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



