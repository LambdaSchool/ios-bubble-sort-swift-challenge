import UIKit


let somethingArray = [10, 22, 1, 45, 24, 100]

func bubbleSort(bunchOfItems: [Int]) -> [Int]{


	var items = bunchOfItems

	for _ in 0..<somethingArray.count {
		for j in 1..<somethingArray.count {
			if items[j] < items[j - 1] {
				let higherValue = items[j - 1]
				items[j - 1] = items[j]
				items[j] = higherValue

			}
		}

		print(items.count)
	}
	return items
}

bubbleSort(bunchOfItems: somethingArray)


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
