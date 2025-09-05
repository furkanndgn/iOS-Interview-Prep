public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func reverseList(_ head: ListNode?) -> ListNode? {
    var prev: ListNode? = nil
    var current = head

    while current != nil {
        let nextNode = current?.next
        current?.next = prev
        prev = current
        current = nextNode
    }

    return prev
}

func buildList(_ arr: [Int]) -> ListNode? {
    guard !arr.isEmpty else { return nil }
    let head = ListNode(arr[0])
    var current = head
    for val in arr.dropFirst() {
        current.next = ListNode(val)
        current = current.next!
    }
    return head
}

// Helper: linked list -> array
func listToArray(_ head: ListNode?) -> [Int] {
    var res = [Int]()
    var current = head
    while current != nil {
        res.append(current!.val)
        current = current!.next
    }
    return res
}

// Example
let head = buildList([1,2,3,4,5])
let reversed = reverseList(head)
print(listToArray(reversed)) // [5,4,3,2,1]

