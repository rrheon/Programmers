import Foundation

let input = Int(readLine()!)!

var arr = [String]()
var groupWordCount: Int = 0


func isGroupWord(_ word: String) -> Int {
  var checkList: [Character] = []
  var check = Character("*")
  
  for i in word {
    if check == i {
      continue
    }else if checkList.contains(i){
      return 0
    }else{
      checkList.append(i)
      check = i
    }
  }
  return 1
}

for _ in 0..<input {
  let word = readLine()!
  groupWordCount += isGroupWord(word)
}

print(groupWordCount)


