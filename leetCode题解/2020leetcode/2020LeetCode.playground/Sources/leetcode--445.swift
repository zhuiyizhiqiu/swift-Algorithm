import Foundation
//445. 两数相加 II
func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var tempOne = l1
    var tempTwo = l2
    var listOneHead: ListNode?
    var lisTwoHead: ListNode?
    while tempOne != nil {
        let currentOne = listOneHead
        listOneHead = tempOne
        tempOne = tempOne?.next
        listOneHead?.next = currentOne
    }
    while tempTwo != nil {
        let currentTwo = lisTwoHead
        lisTwoHead = tempTwo
        tempTwo = tempTwo?.next
        lisTwoHead?.next = currentTwo
    }

    var currentPoint: ListNode?
    currentPoint = listOneHead
    var returnPoint:ListNode?
    var isOverTen = 0
    var pre = listOneHead
    while listOneHead != nil, lisTwoHead != nil {
        pre = listOneHead
        let sum = lisTwoHead!.val + listOneHead!.val + isOverTen
        listOneHead!.val = sum % 10
        if sum >= 10{
            isOverTen = 1
        }else{
            isOverTen = 0
        }
        listOneHead = listOneHead?.next
        lisTwoHead = lisTwoHead?.next
    }

    while lisTwoHead != nil{
        let sum = isOverTen + lisTwoHead!.val
        lisTwoHead!.val = sum % 10
        if sum >= 10{
            isOverTen = 1
        }else{
            isOverTen = 0
        }
        pre?.next = lisTwoHead
        lisTwoHead = lisTwoHead?.next
        pre = pre?.next
    }

    while listOneHead != nil{
        let sum = isOverTen + listOneHead!.val
        listOneHead!.val = sum % 10
        if sum >= 10{
            isOverTen = 1
        }else{
            isOverTen = 0
        }
        listOneHead = listOneHead?.next
    }

    while currentPoint != nil {
        let tep = returnPoint
        returnPoint = currentPoint
        currentPoint = currentPoint?.next
        returnPoint?.next = tep
    }

    if isOverTen == 1{
        let tep = returnPoint
        returnPoint = ListNode(1)
        returnPoint?.next = tep
    }

    return returnPoint
}
