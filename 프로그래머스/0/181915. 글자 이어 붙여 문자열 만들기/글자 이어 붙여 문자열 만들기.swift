import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    return index_list.map { String(Array(my_string)[$0])}.joined()
}