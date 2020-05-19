import UIKit

func bubbleSort( array: [Int]) {
    
    // Creating a new array because the default one seems to be a let constant
    var newArray = array
    
    // Setting up the indexes that'll "crawl" or "bubble" along the array
    var firstElementIndex = 0
    var secondElementIndex = 1
    
    // Getting the initial value of the arrays
    var firstElement : Int = array[firstElementIndex]
    var secondElement: Int = array[secondElementIndex]
    
    // Getting the length of the array so we know when to "reset" the sort
    var arrayLength = array.count
    
    if secondElement > firstElement {
        print("Swap")
        array[firstElementIndex] = secondElementIndex
        array[secondElementIndex] = firstElementIndex
    }
    
    if secondElementIndex == arrayLength{
        firstElement = 0
        secondElement = 0
    } else {
        firstElementIndex += 1
        secondElementIndex += 1
    }
  
    
}


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
