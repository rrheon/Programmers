import Foundation

func solution(_ a:Int, _ b:Int, _ flag:Bool) -> Int {
    var result = flag == true ? a + b : a - b
    return result
}