import UIKit

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
