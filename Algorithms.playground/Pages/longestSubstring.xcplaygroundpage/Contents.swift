import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    var seen = [Character: Int]()
    var left = 0
    var maxLength = 0
    let chars = Array(s)

    for (right, ch) in chars.enumerated() {
        if let prevIdx = seen[ch], prevIdx >= left {
            left = prevIdx + 1
        }
        seen[ch] = right
        maxLength = max(maxLength, right - left + 1)
    }

    return maxLength
}

print(lengthOfLongestSubstring("abcabcbb"))
print(lengthOfLongestSubstring("bbbbb"))
print(lengthOfLongestSubstring("pwwkew"))
print(lengthOfLongestSubstring(""))
print(lengthOfLongestSubstring(" "))
print(lengthOfLongestSubstring("dvdf"))     
