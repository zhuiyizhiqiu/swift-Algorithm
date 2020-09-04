import UIKit

func isPalindrome(_ head: ListNode?) -> Bool{
    var head = head
    var nums:[Int] = []
    
    guard head != nil || head?.next != nil else {
        return true
    }
    nums.append(head!.val)
    while head?.next != nil {
        head = head?.next
        nums.append(head!.val)
    }
    
    let count = nums.count
    for i in 0..<count{
        if nums[i] != nums[count - 1 - i]{
            return false
        }
    }
    
    return true
}

//func reorderList(_ head: ListNode?) {
//    var current = head
//    var pre:ListNode? = ListNode(0)
//    var nextPoint:ListNode? = ListNode(0)
//    var count = 1
//    while current != nil {
//        if count % 2 == 1{
//            pre?.next = current
//            
//        }
//    }
//    
//}

