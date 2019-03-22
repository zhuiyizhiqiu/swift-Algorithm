import UIKit

var s = ""
let nmbers = [1,2,3,4]
print(nmbers, to: &s)
s

var printCaputer = ""
_playgroundPrintHook = {
    text in
    printCaputer += text
}

print("This is supposed to only go to stdout")
printCaputer

struct ArrayStream: TextOutputStream{
    var buffer: [String] = []
    mutating func write(_ string: String) {
        buffer.append(string)
    }
}

var steam = ArrayStream()
print("Hello", to: &steam)
print("World", to: &steam)
steam.buffer
//
//func searchRange(_ nums: [Int], _ target: Int) -> [Int]{
////
////    if nums.count == 0{
////        return [0,0]
////    }
//    var first: Int
//    var last: Int
//    var mind: Int
//
//    first = 0
//    last = nums.count - 1
//    mind = (first + last) / 2
//
//    while first < last && nums[mind] != target {
//        if nums[mind] < target{
//            first = mind + 1
//        }else{
//            last = mind - 1
//        }
//        mind = (first + last) / 2
//        print(mind)
//    }
//
//    if nums[mind] != target {
//        return [-1,-1]
//    }else{
//        var min = mind
//        var max = mind
//        while min >= 0 && nums[min] == target{
//            min -= 1
//        }
//
//        while max <= nums.count - 1 && nums[max] == target {
//            max += 1
//        }
//
//        return [min + 1, max - 1 ]
//    }
//
//}
//let muns = [1,2,3]
//
//let target = 2
//
//searchRange(muns, target)

//func search(_ nums:[Int],_ target: Int) -> Int{
//    var first = 0
//    var last = nums.count - 1
//    var mind = (first + last) / 2
//
//    while first < last && nums[mind] != target {
//        if nums[mind] < target {
//            first = mind + 1
//        }else{
//            last = mind - 1
//        }
//
//        mind = (first + last) / 2
//    }
//
//    if nums[mind] != target{
//        return -1
//    }
//    return mind
//}

//func search(_ nums: [Int], _ target: Int) -> Int{
//    if nums.count == 0{
//        return -1
//    }
//
//    var first1 = 0
//    var last1 = (first1 + nums.count - 1) / 2
//    var mind1 = (first1 + last1) / 2
//
//    var first2 = last1 + 1
//    var last2 = nums.count - 1
//    var mind2 = (first2 + last2) / 2
//    if nums[first1] == target {
//        return first1
//    }
//    if nums[last1] == target {
//        return last1
//    }
//
//    if nums[first2] == target {
//        return first2
//    }
//
//    if nums[last2] == target{
//        return last2
//    }
//
//    while first1 < last1 && nums[mind1] != target {
//        if nums[mind1] < target {
//            first1 = mind1 + 1
//        }else{
//            last1 = mind1 - 1
//        }
//        mind1 = (first1 + last1) / 2
//    }
//
//    while first2 < last2 && nums[mind2] != target {
//        if nums[mind2] < target {
//            first2 = mind2 + 1
//        }else{
//            last2 = mind2 - 1
//        }
//        mind2 = (first2 + last2) / 2
//    }
//
//    if nums[mind1] == target {
//        return mind1
//    }
//
//    if nums[mind2] == target {
//        return mind2
//    }
//
//    return -1
//}
//
//
//func sortedSquares(_ A: [Int]) -> [Int]{
//    var tempArr: [Int] = []
//    for i in A {
//        tempArr.append(i * i)
//    }
//    return tempArr.sorted()
//}
//
//func sortArratByParityII(_ A:[Int]) -> [Int]{
//    var ary = [Int](repeating: 0, count: A.count)
//    var idx1 = 0
//    var idx2 = 1
//
//    for i in A.indices {
//        if A[i] % 2 == 0 {
//            ary[idx1] = A[i]
//            idx1 += 2
//        }else{
//            ary[idx2] = A[i]
//            idx2 += 2
//        }
//    }
//
//    return ary
//}
//[1].indices
////数组元素先平方在排序
//let a = [1,2,3,5,4,-3].map{ $0 * $0}.sorted()
//a
//var sum = 0
//[1,8,6,2,5,4,8,3,7].map{ sum += $0}
//sum
//
//
//func twoSum(_ nums:[Int],_ target: Int) -> [Int]{
//    var dic = [Int:Int]()
//    for (i,num) in nums.enumerated(){
//        if let lastIndex = dic[target - num]{
//            return [lastIndex, i]
//        }else{
//            dic[num] = i
//        }
//    }
//
//    fatalError()
//}


//func _reverse<T>(_ chars: inout[T],_ start: Int,_ end: Int){
//    var start = start, end = end
//
//    while start < end {
//        _swap(&chars, start, end)
//        start += 1
//        end -= 1
//    }
//}
//
//func _swap<T>(_ chars: inout[T], _ p: Int, _ q: Int){
//    (chars[p], chars[q]) = (chars[q],chars[p])
//}
//
//func reverseWords(s: String?) -> String? {
//    guard let s = s else {
//        return nil
//    }
//
//    var chars = Array(s), start = 0
//    _reverse(&chars, start, chars.count - 1)
//    for i in 0...chars.count - 1{
//        if i == chars.count - 1 || chars[i + 1] == " "{
//            _reverse(&chars, start, i)
//            start = i + 2
//        }
//    }
//
//    return String(chars)
//}
//
//var num = "the sky is blue"
//reverseWords(s: num)
//
//let a1 = "the hte"
//let b1 = Array(a1)

//swift 链表
//class ListNode{
//    var val: Int
//    var next: ListNode?
//
//    init(_ val:Int) {
//        self.val = val
//        self.next = nil
//    }
//}
//
//class List{
//    var head: ListNode?
//    var tail: ListNode?
//
//    //尾插法
//    func appendToTail(_ val: Int) {
//        if tail == nil{
//            tail = ListNode(val)
//            head = tail
//        }else{
//            tail!.next = ListNode(val)
//            tail = tail!.next
//        }
//    }
//
//    //头插法
//    func appendToHead(_ val: Int) {
//        if head == nil {
//            head = ListNode(val)
//            tail = head
//        }else{
//            let temp = ListNode(val)
//            temp.next = head
//            head = temp
//        }
//    }
//
//    func printList(){
//        var temp: ListNode?
//        temp = head
//        while temp != nil {
//            print(temp!.val)
//            temp = temp!.next
//        }
//    }
//
//}
//var textList = List()
//textList.appendToHead(5)
//textList.appendToHead(6)
//textList.printList()


//class ListNode{
//    var val: Int
//    var next: ListNode?
//    init(_ val: Int) {
//        self.val = val
//        self.next = nil
//    }
//}
//
//func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode?{
//    guard let head = head else {
//        return nil
//    }
//
//    let dump = ListNode(0)
//    dump.next = head
//    var pre: ListNode? = dump
//    var post: ListNode? = dump
//
//    for _ in 0..<n {
//        if post == nil {
//            break
//        }
//        post = post!.next
//    }
//
//    while post != nil && post!.next != nil {
//        pre = pre!.next
//        post = post!.next
//    }
//
//
//    pre!.next = pre!.next!.next
//
//    return dump.next
//}
//var list = ListNode(2)
//list.next
//removeNthFromEnd(list, 1)


//class ListNode{
//    var val: Int
//    var next: ListNode?
//
//    init(_ val: Int) {
//        self.val = val
//        self.next = nil
//    }
//}

//func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
//    guard  let head = head else {
//        return nil
//    }
//
//    let dump = ListNode(0)
//    dump.next = head
//    var point:ListNode? = dump.next
//    var pre: ListNode? = dump
//    while point != nil {
//        if point!.val == val {
//            pre!.next = point!.next
//            pre = point!.next
//            point = pre?.next
//        }else{
//            pre = pre?.next
//            point = point?.next
//        }
//    }
//
//    return dump.next
//}
//
//func addTwoNumbers(_ l1: ListNode?,_ l2: ListNode?) -> ListNode? {
//    guard let l1 = l1 else {
//        return l2
//    }
//
//    guard let l2 = l2 else {
//        return l1
//    }
//    var str1 = ""
//    var str2 = ""
//
//    var li1: ListNode? = l1
//    var li2: ListNode? = l2
//    while li1 != nil {
//        str1 += String(li1!.val)
//        li1 = li1?.next
//    }
//
//    while li2 != nil {
//        str2 += String(li2!.val)
//        li2 = li2?.next
//    }
//
//    let intNum = Array(String(Int(str1)! + Int(str2)!))
//
//    var head: ListNode?
//    var real: ListNode?
//
//    for i in intNum {
//        if head == nil{
//            head = ListNode(Int(String(i))!)
//            real = head
//        }else{
//            let temp = ListNode(Int(String(i))!)
//            temp.next = head
//            head = temp
//        }
//    }
//    return head
//}

//func _reverse<T>(_ chars: inout [T],_ start: Int, _ end: Int){
//    var start = start,end = end
//    
//    while start < end {
//       _sawp(&chars, start, end)
//        start += 1
//        end -= 1
//    }
//}
//
//func _sawp<T>(_ chars: inout [T],_ p: Int, _ q: Int){
//    (chars[p],chars[q]) = (chars[q],chars[p])
//}
//
//func revrseWords(s: String?) -> String? {
//    guard let s = s else {
//        return nil
//    }
//    var chars = Array(s),start = 0
//    _reverse(&chars, start, chars.count - 1)
//    
//    for i in 0..<chars.count {
//        if i == chars.count - 1 || chars[i + 1] == " " {
//            _reverse(&chars, start, i)
//            start = i + 2
//        }
//    }
//    
//    return String(chars)
//}
//
//var textString = "hello world"
//revrseWords(s: textString)


//protocol Stack{
//    //元素持有类型
//    associatedtype Element
//
//    //是否为空
//    var isEmpty: Bool { get }
//
//    //栈的大小
//    var size: Int { get }
//
//    //栈顶元素
//    var peek: Element? { get }
//
//    //进栈
//    mutating func push(_ newElement: Element)
//
//    //出栈
//    mutating func pop() -> Element?
//}
//
//struct IntegerStack: Stack{
//    typealias Element = Int
//
//    private var stack = [Element]()
//
//    var isEmpty: Bool { return stack.isEmpty}
//    var size: Int { return stack.count}
//    var peek: Int? {return stack.last}
//
//    mutating func push(_ newElement: Int) {
//        stack.append(newElement)
//    }
//
//    mutating func pop() -> Int? {
//        return stack.popLast()
//    }
//}
//
//var textStack = IntegerStack()
//textStack.isEmpty
//textStack.push(10)
//textStack.size
//textStack.peek
//textStack.isEmpty
//textStack.pop()
//textStack.isEmpty

//protocol Stack{
//    associatedtype Element
//
//    var isEmpty: Bool { get }
//    var size: Int { get }
//    var peek: Element? { get }
//
//    mutating func push(_ newElement: Element)
//
//    mutating func pop() -> Element?
//}
//
//struct StringStack: Stack{
//    typealias Element = Character
//
//    private var stack = [Character]()
//    var size: Int { return stack.count}
//    var isEmpty: Bool { return stack.isEmpty}
//    var peek: Character? { return stack.last}
//
//    mutating func push(_ newElement: Character) {
//        if !stack.isEmpty {
//            switch peek! {
//            case "{":
//                if newElement == "}" {
//                    pop()
//                }else{
//                    stack.append(newElement)
//                }
//            case "}":
//                if newElement == "{" {
//                    pop()
//                }else{
//                    stack.append(newElement)
//                }
//            case "(":
//                if newElement == ")" {
//                    pop()
//                }else{
//                    stack.append(newElement)
//                }
//            case ")":
//                if  newElement == "(" {
//                    pop()
//                }else{
//                    stack.append(newElement)
//                }
//            case "[":
//                if newElement == "]" {
//                    pop()
//                }else{
//                    stack.append(newElement)
//                }
//            case "]":
//                if newElement == "[" {
//                    pop()
//                }else{
//                    stack.append(newElement)
//                }
//            default:
//                stack.append(newElement)
//            }
//        }else{
//            stack.append(newElement)
//        }
//    }
//
//    mutating func pop() -> Character? {
//        return stack.popLast()
//    }
//
//}
//
//func isValid(_ s: String) -> Bool{
//    let sChar = Array(s)
//    var strStack = StringStack()
//
//    sChar.map { strStack.push($0)}
//
//    return strStack.isEmpty
//}
//
//var textS = "()"
//isValid(textS)

//protocol Queue {
//    associatedtype Element
//
//    var isEmpty: Bool { get }
//    var size: Int { get }
//    var peek: Element? { get }
//
//    mutating func enqueue(_ newElement: Element)
//
//    mutating func dequeue() -> Element?
//}
//
//struct IntergerQueue: Queue{
//    typealias Element = Int
//
//    private var left = [Element]()
//    private var right = [Element]()
//
//    var isEmpty: Bool { return left.isEmpty && right.isEmpty }
//    var size: Int { return left.count + right.count }
//    var peek: Int? { return left.isEmpty ?  left.first : right.first}
//
//    mutating func enqueue(_ newElement: Int) {
//        right.append(newElement)
//    }
//
//    mutating func dequeue() -> Int? {
//        if  left.isEmpty {
//            left = right.reversed()
//            right.removeAll()
//        }
//        return left.popLast()
//    }
//}
//protocol Queue{
//    associatedtype Element
//
//    var isEmpty: Bool { get }
//    var size: Int { get }
//    var peek: Element? { get }
//
//    mutating func enqueue(_ newElement: Element)
//
//    mutating func dequeue() -> Element?
//}
//
//struct IntergetQueue: Queue{
//    typealias Element = Int
//
//    private var left = [Element]()
//    private var right = [Element]()
//
//    var isEmpty: Bool { return left.isEmpty && right.isEmpty}
//    var size: Int { return left.count + right.count }
//    var peek: Int? { return left.isEmpty ? left.first : right.last}
//
//    mutating func enqueue(_ newElement: Int) {
//        right.append(newElement)
//    }
//
//    mutating func dequeue() -> Int? {
//        if left.isEmpty {
//            left = right.reversed()
//            right.removeAll()
//        }
//        return left.first
//    }
//}
//
//var textQueue = IntergetQueue()
//textQueue.enqueue(9)
//textQueue.size
//
//protocol Stack{
//    associatedtype Element
//
//    var isEmpty: Bool { get }
//    var size: Int { get }
//    var peek: Element? { get }
//
//    mutating func push(_ newElement: Element)
//
//    mutating func pop() -> Element?
//}
//
//struct IntergetStack: Stack{
//    typealias Element = Int
//
//    private var stack = [Element]()
//
//    var isEmpty: Bool { return stack.isEmpty}
//    var size: Int { return stack.count }
//    var peek: Int? { return stack.last }
//
//    mutating func push(_ newElement: Int) {
//        stack.append(newElement)
//    }
//
//    mutating func pop() -> Int? {
//        return stack.popLast()
//    }
//}
//var tex = IntergetStack()
//tex.push(5)
//tex.pop()
//tex.pop()
////struct MyQueue {
////    var stackA = IntergetStack()
////    var stackB = IntergetStack()
////
////    var isEmpty: Bool {
////        return stackA.isEmpty && stackB.isEmpty
////    }
////
////    var peek: Any? {
////        mutating get {
////            shift()
////            return stackB.peek
////        }
////    }
////
////    var size: Int {
////        get {
////            return stackA.size + stackB.size
////        }
////    }
////
////    mutating func enqueue(object: Any?) {
////        stackA.push(object as! Int)
////    }
////    mutating func dequeue() -> Int?{
////        shift()
////        return stackB.pop()
////    }
////
////    fileprivate mutating func shift() {
////        if stackB.isEmpty {
////            while !stackA.isEmpty {
////                stackB.push(stackA.pop()!)
////            }
////        }
////    }
////
////}
//
//struct MyQueue{
//    var stackA : IntergetStack
//    var stackB : IntergetStack
//
//    init() {
//        stackA = IntergetStack()
//        stackB = IntergetStack()
//    }
//
//    var isEmpty: Bool {
//        return stackA.isEmpty && stackB.isEmpty
//    }
//
//    var peek: Any?{
//        mutating get {
//            shift()
//            return stackB.peek
//        }
//    }
//
//    var size: Int{
//        get {
//            return stackA.size + stackB.size
//        }
//    }
//
//    mutating func enqueue(object: Any?){
//        stackA.push(object as! Int)
//    }
//
//    mutating func dequeue() -> Any?{
//        shift()
//        return stackB.pop()
//    }
//
//    fileprivate mutating func shift(){
//        if stackB.isEmpty {
//            while !stackA.isEmpty {
//                stackB.push(stackA.pop()!)
//            }
//        }
//    }
//}
//
//var textMystack = MyQueue()
//
//textMystack.enqueue(object: 5)
//textMystack.size
//textMystack.peek
//
//struct MyStack{
//    var queueA: IntergetQueue
//    var queueB: IntergetQueue
//
//    private mutating func shift(){
//        while queueA.size != 1 {
//            queueB.enqueue(queueA.dequeue()!)
//        }
//    }
//
//    private mutating func swap() {
//        (queueA,queueB) = (queueB,queueA)
//    }
//
//    init() {
//        queueA = IntergetQueue()
//        queueB = IntergetQueue()
//    }
//
//    var isEmpty: Bool {
//        return queueB.isEmpty && queueB.isEmpty
//    }
//
//    var peek: Int? {
//        mutating get{
//            shift()
//            let peekObj = queueA.peek
//            queueB.enqueue(queueA.dequeue()!)
//            swap()
//            return peekObj
//        }
//    }
//
//    var size: Int {
//        return queueA.size
//    }
//
//    mutating func push(object: Int){
//        queueA.enqueue(object)
//    }
//
//    mutating func pop() -> Int?{
//        shift()
//        let popObject = queueA.dequeue()
//        swap()
//        return popObject
//    }
//}

