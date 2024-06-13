import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    queries.map { i in
        arr[i[0]...i[1]].filter{ $0 > i[2] }.min() ?? -1
    }
}
