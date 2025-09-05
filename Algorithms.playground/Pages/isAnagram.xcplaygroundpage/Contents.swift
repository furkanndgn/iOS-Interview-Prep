import Foundation

func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count { return false }

    var dict = [Character: Int] ()

    s.forEach { char in
        dict[char, default: 0] += 1
    }
    for char in t {
        if let freq = dict[char] {
            if freq == 1 {
                dict.removeValue(forKey: char)
            } else {
                dict[char]! = freq - 1
            }
        } else {
            return false
        }
    }

    return dict.isEmpty
}


print(isAnagram("anagram", "nagaram"))
print(isAnagram("rat", "car"))
print(isAnagram("a", "a"))
print(isAnagram("ab", "a"))
