import Foundation
//剑指 Offer 18. 删除链表的节点
func deleteNode(_ head: ListNode?, _ val: Int) -> ListNode? {
    let currentHead = head

    var prePoint = head

    if prePoint!.val == val{
        prePoint = prePoint?.next
        return prePoint
    }
    var currentPoint = head
    while currentPoint != nil {
        if currentPoint!.val == val{
            prePoint?.next = currentPoint?.next
        }
        prePoint = currentPoint
        currentPoint = currentPoint?.next
    }

    return currentHead
}
