import Foundation

let appendCase = ["(",")","[","]"]
var input = String()

while input != "." {
  input = readLine()!
  if input == "." {
    break
  }
  var queue = [String]()

  for i in input{
    if appendCase.contains(String(i)) {
      queue.append(String(i))
      if queue.count > 1{
        if queue.last == ")" && queue[queue.count - 2] == "("
            || queue.last == "]" && queue[queue.count - 2] == "[" {
          queue.removeLast()
          queue.removeLast()
        }
      }
    }
  }

  if queue.isEmpty {
    print("yes")
  }else {
    print("no")
  }
}
