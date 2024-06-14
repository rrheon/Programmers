import Foundation

func solution(_ n: Int) -> [Int] {
    var number = n
    var newArray = [number]
    
    while number != 1 {
        if number % 2 == 0 {
            number /= 2
        } else {
            number = 3 * number + 1
        }
        newArray.append(number)
    }
    
    return newArray
}