import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var newArray = arr
    queries.forEach{ i in
        (i[0]...i[1]).filter{ $0 % i[2] == 0 }.forEach{ newArray[$0] += 1 }
    }
    return newArray
}