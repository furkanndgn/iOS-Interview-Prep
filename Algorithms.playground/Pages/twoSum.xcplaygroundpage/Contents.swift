import Foundation

/// Time Complexity: O(n)
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()

    for (i, num) in nums.enumerated() {
        let complement = target - num
        if let j = dict[complement] {
            return [i, j]
        }
        dict[num] = i
    }
    return []
}

print(twoSum([2,7,11,15], 9))
print(twoSum([3,2,4], 6))
print(twoSum([3,3], 6))
