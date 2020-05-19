import UIKit

func bubbleSort<Element: Comparable>(_ list: inout [Element], by operation: (Element, Element) -> Bool = (<)) {
    
    var changed = false
    
    repeat {
        changed = false
        print(list)
        for i in 0..<list.count {
            guard i < list.count-1 else { break }
            
            let current = list[i]
            let next = list[i+1]
            
            if operation(next, current) {
                
                list[i] = next
                list[i+1] = current

                changed = true
            }
        }
    } while changed == true
}


// Test Cases
var arr1 = [1, 3, 6, 2, 4, 5]
var arr3 = [6, 5, 4, 3, 2, 1]

bubbleSort(&arr1) // returns [1, 2, 3, 4, 5, 6]
bubbleSort(&arr1, by: >) // returns [6, 5, 4, 3, 2, 1]
bubbleSort(&arr3) // returns [1, 2, 3, 4, 5, 6]


// Test Cases (Stretch Goal)
var arr4 = [1, 3, 6, 2, 4, 5]
var arr5 = ["b", "a", "c", "f", "e", "d", "i", "g", "h"]
var arr6 = [6, 5, 4, 3, 2, 1]
bubbleSort(&arr4) // returns [1, 2, 3, 4, 5, 6]
bubbleSort(&arr5) // returns ["i", "h", "g", "f", "e", "d", "c", "b", "a"]
bubbleSort(&arr5, by: >) // returns ["i", "h", "g", "f", "e", "d", "c", "b", "a"]
bubbleSort(&arr6) // returns [1, 2, 3, 4, 5, 6]
