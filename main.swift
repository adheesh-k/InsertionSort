import Foundation

let unsortedStrings = ["Hello", "World", "Swift", "Runtime"]


var unsortedArray = unsortedStrings
var tempCount = 0
var totalCount = 0
var functionInvoke: Bool = true
print("Pass: \(0), Swaps: \(tempCount)/\(totalCount), Array: \(unsortedArray)")



func insertionSort(unsortedStrings: [String]) -> [String] {
    var a = unsortedStrings
    for x in 1..<a.count {
        var y = x
        let temp = a[y]
        while y > 0 && temp < a[y - 1] {
            a[y] = a[y - 1]
            y -= 1
            tempCount += 1
        }
        
        totalCount += tempCount
        a[y] = temp


        print("Pass: \(x), Swaps: \(tempCount)/\(totalCount), Array: \(a)") 

        tempCount = 0

        
    }
    return a
}

var sortedArray = insertionSort(unsortedStrings: unsortedArray)
