import UIKit

func customReduce<T>(initialValue: T,array: [T], operation: (T, T) -> T)-> T {
    var result: T = initialValue
    for element in array {
        result = operation(result, element)
    }
    return result
}

let numbers: [Int] = [1, 2, 3, 4, 5]
let result: Int = customReduce(initialValue: 1, array: numbers) { $0 + $1 }
print(result)
