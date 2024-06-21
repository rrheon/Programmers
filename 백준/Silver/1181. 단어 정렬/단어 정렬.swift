import Foundation

// 단어의 개수 받기
var countWord = Int(readLine()!)!

// 단어 입력받기
var words = [String]()

for _ in 0..<countWord {
  words.append(readLine()!)
}

var sortedWords = Array(Set(words)).sorted()

sortedWords.sort {
  if $0.count == $1.count {
    return $0 < $1
  } else {
    return $0.count < $1.count
  }
}

for i in sortedWords {
  print(i)
}

