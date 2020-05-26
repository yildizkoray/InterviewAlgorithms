import Foundation

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
