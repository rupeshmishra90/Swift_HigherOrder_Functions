import UIKit

func customMap<T>(_ array: [T], operation: (T) -> T)-> [T] {
    var result: [T] = []
    for element in array {
        result.append(operation(element))
    }
    return result
}

let numbers: [Int] = [1, 2, 3, 4, 5]
let result: [Int] = customMap(numbers) { $0 * 2 }
print(result)
