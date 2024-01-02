import Foundation

func solution(_ code:String) -> String {
  var ret: String = ""
  var mode: Int = 0
  var count = 0
  
  for i in code{
    if mode == 0 {
      if i != "1" && count % 2 == 0 {
        ret.append(i)
      } else if i == "1" {
        mode = 1
      }
    } else if mode == 1 {
      if i != "1" && count % 2 != 0 {
        ret.append(i)
      } else if i == "1" {
        mode = 0
      }
    }
    count += 1
  }

  if ret.isEmpty {
    return "EMPTY"
  }
  
  return ret
}