import Foundation

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



