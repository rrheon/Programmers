import Foundation

while(true) {
  let number = readLine()!
  if number == "0" {
    break
  }
  if number == String(number.reversed()) {
    print("yes")
  }else {
    print("no")
  }
}

