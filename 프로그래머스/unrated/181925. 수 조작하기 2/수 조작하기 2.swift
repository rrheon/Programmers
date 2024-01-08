import Foundation

func solution(_ numLog:[Int]) -> String {
  var result: String = ""
  zip(numLog, numLog.dropFirst()).forEach {
    switch $0 - $1{
    case 1:
      return result.append("s")
    case -1:
      return result.append("w")
    case 10:
      return result.append("a")
    case -10:
      return result.append("d")
    default:
      return
    }
  }
  return result
}