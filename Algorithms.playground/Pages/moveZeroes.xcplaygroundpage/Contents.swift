import Foundation

func moveZeroes(_ nums: inout [Int]) {
    var insertIndex = 0

    for num in nums where num != 0 {
        nums[insertIndex] = num
        insertIndex += 1
    }

    while insertIndex < nums.count {
        nums[insertIndex] = 0
        insertIndex += 1
    }
}

var arr1 = [0,1,0,3,12]
moveZeroes(&arr1)
print(arr1)

var arr2 = [0,0,1]
moveZeroes(&arr2)
print(arr2)

var arr3 = [1,2,3]
moveZeroes(&arr3)
print(arr3)
