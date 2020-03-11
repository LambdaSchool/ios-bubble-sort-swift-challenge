import UIKit

func bubbleSort<T: Comparable>(_ array: inout [T], by: ((T, T) -> Bool) = (<) ) {
    var hasSorted = true
    while hasSorted {
        hasSorted = false
        for i in 0..<array.count {
            if i + 1 < array.count {
                if by(array[i+1], array[i]) {
                    array.swapAt(i, i + 1)
                    hasSorted = true
                }
            }
        }
    }
}


// Test Cases
var arr1 = [1, 3, 6, 2, 4, 5]
var arr3 = [6, 5, 4, 3, 2, 1]
bubbleSort(&arr1) // returns [1, 2, 3, 4, 5, 6]
bubbleSort(&arr1, by: >) // returns [6, 5, 4, 3, 2, 1]
bubbleSort(&arr3) // returns [6, 5, 4, 3, 2, 1]


// Test Cases (Stretch Goal)
var arr4 = [1, 3, 6, 2, 4, 5]
var arr5 = ["b", "a", "c", "f", "e", "d", "i", "g", "h"]
var arr6 = [6, 5, 4, 3, 2, 1]
bubbleSort(&arr4) // returns [1, 2, 3, 4, 5, 6]
bubbleSort(&arr5, by: >) // returns ["i", "h", "g", "f", "e", "d", "c", "b", "a"]
bubbleSort(&arr6) // returns [1, 2, 3, 4, 5, 6]
