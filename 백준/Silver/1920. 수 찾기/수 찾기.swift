import Foundation

// n개의 수 입력받기
let nNum = Int(readLine()!)!
var nNums = readLine()!.split(separator: " ").map { Int($0)! }
// m개의 수 입력받기
let mNum = Int(readLine()!)!
let mNums = readLine()!.split(separator: " ").map { Int($0)! }

// nNums 정렬
nNums.sort()

// 이진 탐색 함수
func binarySearch(_ array: [Int], target: Int) -> Bool {
  var left = 0
  var right = array.count - 1
  
  while left <= right {
    let mid = (left + right) / 2
    if array[mid] == target {
      return true
    } else if array[mid] < target {
      left = mid + 1
    } else {
      right = mid - 1
    }
  }
  
  return false
}

// m개의 수에 대해 이진 탐색을 통해 존재 여부를 확인하여 출력
for num in mNums {
  if binarySearch(nNums, target: num) {
    print("1")
  } else {
    print("0")
  }
}
