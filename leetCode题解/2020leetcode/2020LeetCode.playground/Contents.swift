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

func compressString(_ S: String) -> String {
    guard S.count > 0 else{
        return S
    }
    var arr = ""
    var count = 1
    for (i,j) in zip(S, S.dropFirst()){
        if i == j{
            count += 1
        }else{
            arr += String(i) + String(describing: count)
            count = 1
        }
    }
    arr += String(S.last!) + String(describing: count)
    return arr.count >= S.count ? S : arr
}

//func addBinary(_ a: String,_ b: String) -> String{
//    var attStr = ""
//    var count = 0
//    for (i,j) in zip(a.reversed(), b.reversed()){
//        switch (i,j) {
//        case ("0","0"):
//            if count == 1{
//                attStr.append("1")
//                count = 0
//            }else{
//                attStr.append("0")
//            }
//        case ("1","0"):
//            if count == 1{
//                attStr.append("0")
//                count = 1
//            }else{
//                attStr.append("1")
//            }
//        case ("0","1"):
//            if count == 1{
//                attStr.append("0")
//                count = 1
//            }else{
//                attStr.append("1")
//            }
//        case ("1","1"):
//            if count == 1{
//                attStr.append("1")
//                count = 1
//            }else{
//                attStr.append("0")
//                count = 1
//            }
//        default:
//            break
//        }
//    }
//    return attStr
//}
//let a = addBinary("11", "1")

