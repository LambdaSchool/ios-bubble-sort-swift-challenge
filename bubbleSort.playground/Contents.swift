import UIKit


func bubbleSort<Element: Comparable>(array: [Element]) -> [Element] {
    var newArray = array
    for i in 0..<newArray.count {
        for j in 1..<newArray.count - i {
            if newArray[j] < newArray[j-1] {
                let number = newArray[j-1]
                newArray[j-1] = newArray[j]
                newArray[j] = number
            }
        }
    }
    return newArray
}

var array1 = [1, 3, 6, 2, 4, 5]
bubbleSort(array: array1)

var array2 = ["b", "a", "c", "f", "e", "d", "i", "g", "h"]
bubbleSort(array: array2)


// Test Cases
//var arr1 = [1, 3, 6, 2, 4, 5]
//var arr3 = [6, 5, 4, 3, 2, 1]
//bubbleSort(&arr1) // returns [1, 2, 3, 4, 5, 6]
//bubbleSort(&arr1, by: >) // returns [6, 5, 4, 3, 2, 1]
//bubbleSort(&arr3) // returns [1, 2, 3, 4, 5, 6]


// Test Cases (Stretch Goal)
//var arr4 = [1, 3, 6, 2, 4, 5]
//var arr5 = ["b", "a", "c", "f", "e", "d", "i", "g", "h"]
//var arr6 = [6, 5, 4, 3, 2, 1]
//bubbleSort(&arr4) // returns [1, 2, 3, 4, 5, 6]
//bubbleSort(&arr5, by: >) // returns ["i", "h", "g", "f", "e", "d", "c", "b", "a"]
//bubbleSort(&arr6) // returns [1, 2, 3, 4, 5, 6]
