import Foundation

func isValidParentheses(_ s: String) -> Bool {
    var stack = [Character]()
    let pairs: [Character: Character] = [")": "(", "]": "[", "}": "{"]

    for char in s {
        if pairs.keys.contains(char) {
            if stack.isEmpty || pairs[char] != stack.last {
                return false
            }
            stack.removeLast()
        } else {
            stack.append(char)
        }
    }

    return stack.isEmpty
}

print(isValidParentheses("()"))
print(isValidParentheses("()[]{}"))
print(isValidParentheses("(]"))
print(isValidParentheses("([)]"))
print(isValidParentheses("{[]}"))
print(isValidParentheses(""))        
