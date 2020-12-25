import Foundation
//24. 两两交换链表中的节点
func swapPairs(_ head: ListNode?) -> ListNode? {
    var pre = head
    var next = head?.next
    while pre != nil,next != nil {
        let temp = pre!.val
        pre!.val = next!.val
        next!.val = temp
        
        pre = next?.next
        next = pre?.next
    }
    
    return head
}
