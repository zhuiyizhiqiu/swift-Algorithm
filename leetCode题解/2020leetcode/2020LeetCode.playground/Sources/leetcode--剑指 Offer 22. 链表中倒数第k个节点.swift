import Foundation
//剑指 Offer 22. 链表中倒数第k个节点
func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
    var headPoint = head
    var tempPoint = head
    var count = 0
    while count < k {
        tempPoint = tempPoint?.next
        count += 1
    }

    while tempPoint != nil {
        headPoint = headPoint?.next
        tempPoint = tempPoint?.next
    }

    return headPoint
}
