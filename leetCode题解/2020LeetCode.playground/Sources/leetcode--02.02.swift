import Foundation
//面试题 02.02. 返回倒数第 k 个节点
func kthToLast(_ head: ListNode?, _ k: Int) -> Int {
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
    
    return headPoint!.val
    
}
