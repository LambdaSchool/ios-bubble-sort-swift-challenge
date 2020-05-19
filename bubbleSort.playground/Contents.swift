import UIKit

func bubbleSort(_ array: inout [Int]){
    for _ in 0...array.count - 1 {
        for j in 0...array.count - 2{
            if array[j] > array [j + 1] {
                let value = array [j]
                array[j] = array[j + 1]
                array [j + 1] = value
            }
        }
    }
}


// Test Cases
var arr1 = [1, 3, 6, 2, 4, 5]
var arr3 = [6, 5, 4, 3, 2, 1]
bubbleSort(&arr1) // returns [1, 2, 3, 4, 5, 6]
//bubbleSort(&arr1, by: >) // returns [6, 5, 4, 3, 2, 1]
//bubbleSort(&arr3) // returns [1, 2, 3, 4, 5, 6]


// Test Cases (Stretch Goal)
//var arr4 = [1, 3, 6, 2, 4, 5]
//var arr5 = ["b", "a", "c", "f", "e", "d", "i", "g", "h"]
//var arr6 = [6, 5, 4, 3, 2, 1]
//bubbleSort(&arr4) // returns [1, 2, 3, 4, 5, 6]
//bubbleSort(&arr5, by: >) // returns ["i", "h", "g", "f", "e", "d", "c", "b", "a"]
//bubbleSort(&arr6) // returns [1, 2, 3, 4, 5, 6]
