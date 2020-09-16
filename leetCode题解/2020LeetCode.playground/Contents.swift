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

func reorderList(_ head: ListNode?) {
    var current = head
    var pre = current
    var temp: ListNode?
    var nextPoint = head?.next
    var count = 1
    while pre != nil,nextPoint != nil {
        //尾插法
        if count % 2 == 1{
            pre?.next = nextPoint
            pre = pre?.next
        }else{//头插法
            let tempPoint = temp
            temp = nextPoint
            temp?.next = tempPoint
            nextPoint = pre?.next
        }
        count += 1
    }
    count = 1
    var returnPoint = current
    var preCurrent = current
    while pre != nil, temp != nil {
        preCurrent = current
        if count % 2 == 1{
            current?.next = pre
            pre = pre?.next
        }else{
            current?.next = temp
            temp = temp?.next
        }
        current = current?.next
        count += 1
    }
    
    if pre != nil{
        preCurrent?.next = pre
    }
    
    if temp != nil{
        preCurrent?.next = temp
    }
    
}

func reverseKGroup(_ head: ListNode?,_ k: Int) -> ListNode?{
    var p1 = head
    var p2: ListNode?
    var tempHead = p1
    var count = k
    var isFirst = 1
    var reHead = p2
    
    while p1 != nil {
        if count == (k - 1){
            tempHead = p2
        }
        let temp = p2
        p2 = p1
        p1 = p1?.next
        p2?.next = temp
        count -= 1
        if count == 0{
            if isFirst == 1{
                reHead = p2
                isFirst = 0
            }
            count = k
            p2 = tempHead
        }
    }
    
    return reHead
}

//442. 数组中重复的数据
