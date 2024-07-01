let num = Int(readLine()!)!

for _ in 1...num {
  let ps = readLine()!
  var array = [String]()
  
  for i in ps {
    array.append("\(i)")
    
    if array.count > 1 {
      if (array.last == ")" && array[array.count - 2]  == "(") {
        array.removeLast()
        array.removeLast()
      }
    }
  }
  print(array.isEmpty ? "YES" : "NO")
}

