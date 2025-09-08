import Foundation

func firstUniq(_ s: String) -> Int {
    var chars = [Character: Int]()

    for char in s {
        chars[char, default: 0] += 1
    }

    for (i, char) in s.enumerated() {
        if chars[char] == 1 {
            return i
        }
    }

    return -1
}

print(firstUniq("leetcode"))
print(firstUniq("loveleetcode"))
print(firstUniq("aabb"))
print(firstUniq(""))
