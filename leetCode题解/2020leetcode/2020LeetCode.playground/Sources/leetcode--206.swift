import Foundation
//206. 反转链表
func reverseList(_ head: ListNode?) -> ListNode? {
    var reverseHead: ListNode?
    reverseHead?.next = nil
    var currentHead = head
    while currentHead != nil {
        let temp = reverseHead
        reverseHead = currentHead
        currentHead = currentHead?.next
        reverseHead?.next = temp
    }
    return reverseHead
}
