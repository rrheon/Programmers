import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
   var answer: [Int] = []
    for i in intStrs {
        var n = Int(i.map { String($0) }[s...s+l-1].joined())!
        n > k ? answer.append(n) : nil
    }
    return answer
}