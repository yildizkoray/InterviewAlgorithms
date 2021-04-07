import Foundation

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
