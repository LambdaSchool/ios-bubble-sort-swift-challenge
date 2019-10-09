import UIKit

func bubbleSort(_ anArray: [Int]) -> [Int]{

	var totalItems = anArray.count

	for indexPlace in 0...totalItems {
		for indexPlace2 in 1...totalItems {
			if anArray[indexPlace2] > anArray[indexPlace2+1] {
				let higherValue = anArray[indexPlace2]
				anArray[indexPlace2] = anArray[indexPlace2+1]
				anArray[index] = higherValue

			}
		}

		print(totalItems)
	}
	return anArray
}

bubbleSort([1, 2, 3])


// Test Cases
//var arr1 = [1, 3, 6, 2, 4, 5]
//var arr3 = [6, 5, 4, 3, 2, 1]
//bubbleSort(&arr1) // returns [1, 2, 3, 4, 5, 6]
//bubbleSort(&arr1, by: >) // returns [6, 5, 4, 3, 2, 1]
//bubbleSort(&arr3) // returns [6, 5, 4, 3, 2, 1]


// Test Cases (Stretch Goal)
//var arr4 = [1, 3, 6, 2, 4, 5]
//var arr5 = ["b", "a", "c", "f", "e", "d", "i", "g", "h"]
//var arr6 = [6, 5, 4, 3, 2, 1]
//bubbleSort(&arr4) // returns [1, 2, 3, 4, 5, 6]
//bubbleSort(&arr5, by: >) // returns ["i", "h", "g", "f", "e", "d", "c", "b", "a"]
//bubbleSort(&arr6) // returns [1, 2, 3, 4, 5, 6]
