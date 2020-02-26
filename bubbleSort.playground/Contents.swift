import UIKit
//
//func bubbleSort(){
//
//}


// Test Cases
var arr1 = [1, 3, 6, 2, 4, 5]
var arr3 = [6, 5, 4, 3, 2, 1]
//bubbleSort(&arr1) // returns [1, 2, 3, 4, 5, 6]
//bubbleSort(&arr1, by: >) // returns [6, 5, 4, 3, 2, 1]
//bubbleSort(&arr3) // returns [6, 5, 4, 3, 2, 1]


// Test Cases (Stretch Goal)
var arr4 = [1, 3, 6, 2, 4, 5]
var arr5 = ["b", "a", "c", "f", "e", "d", "i", "g", "h"]
var arr6 = [6, 5, 4, 3, 2, 1]
//bubbleSort(&arr4) // returns [1, 2, 3, 4, 5, 6]
//bubbleSort(&arr5, by: >) // returns ["i", "h", "g", "f", "e", "d", "c", "b", "a"]
//bubbleSort(&arr6) // returns [1, 2, 3, 4, 5, 6]

extension Array where Element: Comparable {
  public mutating func bubbleSort() {
    for alreadySorted in 1 ... self.count {
      var sorted = true
      for walkerIndex in 0 ..< self.count - alreadySorted {
        if self[walkerIndex] > self[walkerIndex + 1] {
          swapAt(walkerIndex, walkerIndex + 1)
          sorted = false
        }
      }
      if sorted {
        break
      }
    }
  }
}

arr4.bubbleSort()
arr1.bubbleSort()
arr3.bubbleSort()
arr5.bubbleSort()
arr6.bubbleSort()
