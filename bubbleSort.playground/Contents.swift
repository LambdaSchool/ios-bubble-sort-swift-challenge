import UIKit

func bubbleSort(_ arr: [Int], foward: Bool) -> [Int]{

    var array = arr
    for _ in 0..<array.count - 1{
        for i in 0..<array.count - 1 {
            if (array[i] > array[i+1]) {
                let temp = array[i]
                array[i] = array[i+1]
                array[i+1] = temp
            }
        }
    }
    if foward == true{
        return array
    } else {
        return array.reversed()
    }
}


// Test Cases
var arr1 = [1, 3, 6, 2, 4, 5]
var arr3 = [6, 5, 4, 3, 2, 1]
bubbleSort(arr1, foward: true)// returns [1, 2, 3, 4, 5, 6]
bubbleSort(arr1, foward: false) // returns [6, 5, 4, 3, 2, 1]
bubbleSort(arr3, foward: true) // returns [1, 2, 3, 4, 5, 6]


// Test Cases (Stretch Goal)
//var arr4 = [1, 3, 6, 2, 4, 5]
//var arr5 = ["b", "a", "c", "f", "e", "d", "i", "g", "h"]
//var arr6 = [6, 5, 4, 3, 2, 1]
//bubbleSort(&arr4) // returns [1, 2, 3, 4, 5, 6]
//bubbleSort(&arr5, by: >) // returns ["i", "h", "g", "f", "e", "d", "c", "b", "a"]
//bubbleSort(&arr6) // returns [1, 2, 3, 4, 5, 6]
