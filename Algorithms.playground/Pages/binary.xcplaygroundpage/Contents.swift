import Foundation

func binarySearch(_ nums: [Int], _ target: Int) -> Int {
    var left = 0
    var right = nums.count - 1

    while left <= right {
        let mid = (left + right) / 2
        if nums[mid] == target {
            return mid
        } else if nums[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return -1
}

print(binarySearch([-1,0,3,5,9,12], 9))   
print(binarySearch([-1,0,3,5,9,12], 2))   
print(binarySearch([1], 1))               
print(binarySearch([1], 2))               
