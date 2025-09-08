import Foundation

public class ListNode {
    var val: Int
    var next: ListNode?
    init(_ val: Int, next: ListNode? = nil) {
        self.val = val
        self.next = next
    }
}

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    let dummy = ListNode(0)
    var tail = dummy
    var a = list1
    var b = list2

    while let nodeA = a, let nodeB = b {
        if nodeA.val < nodeB.val {
            tail.next = nodeA
            a = nodeA.next
        } else {
            tail.next = nodeB
            b = nodeB.next
        }
        tail = tail.next!
    }

    tail.next = a ?? b

    return dummy.next
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

func listToArray(_ head: ListNode?) -> [Int] {
    var res = [Int]()
    var current = head
    while current != nil {
        res.append(current!.val)
        current = current!.next
    }
    return res
}

let l1 = buildList([1,2,4])
let l2 = buildList([1,3,4])
let merged = mergeTwoLists(l1, l2)
print(listToArray(merged))
