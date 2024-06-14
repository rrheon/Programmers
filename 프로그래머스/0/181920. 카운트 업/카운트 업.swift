import Foundation

func solution(_ start_num:Int, _ end_num:Int) -> [Int] {
    var newArray = [Int]()
    for i in start_num...end_num {
        newArray.append(i)
    }
    return newArray
}