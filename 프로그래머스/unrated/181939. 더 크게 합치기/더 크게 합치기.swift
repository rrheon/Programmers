import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
  var result1 = Int(String(a) + String(b))!
  var result2 = Int(String(b) + String(a))!
  var final = result1 > result2 ? result1 : result2
  return final
}