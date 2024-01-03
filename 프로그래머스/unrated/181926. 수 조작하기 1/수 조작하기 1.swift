import Foundation

func solution(_ n:Int, _ control:String) -> Int {
  var result = n
  control.map {
    switch $0 {
    case "w":
      return result += 1
    case "s":
      return result -= 1
    case "d":
      return result += 10
    case "a":
      return result -= 10
    default:
      return
    }
  }
 
  return result
}