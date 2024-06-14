import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var str = Array(my_string)
    queries.forEach { i in
        str[i[0]...i[1]].reverse()
    }
    return str.map { String($0)}.joined()
}