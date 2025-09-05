import Foundation

func isPalindrome(_ s: String) -> Bool {
    let filtered = s.lowercased().filter { $0.isLetter || $0.isNumber }
    let chars = Array(filtered)
    var left = 0
    var right = chars.count - 1

    while left < right {
        if chars[left] != chars[right] {
            return false
        }
        left += 1
        right -= 1
    }
    return true
}

print(isPalindrome("racecar"))
print(isPalindrome("selam"))
print(isPalindrome(""))
