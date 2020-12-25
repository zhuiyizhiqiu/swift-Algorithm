import UIKit
//225 用队列实现栈
protocol Queue{
    associatedtype Element
    
    var isEmpty: Bool { get }
    var peek: Element { get }
    var size: Int { get }
    
    mutating func enqueue(_ newElement: Element)
    
    mutating func dequeue() -> Element
}

struct IntegetQueue: Queue{
    typealias Element = Int
    
    private var queueL = [Element]()
    private var queueR = [Element]()
    
    var isEmpty: Bool { return queueL.isEmpty && queueR.isEmpty }
    var peek: Int { return !queueR.isEmpty ? queueR.last! : queueL.last! }
    var size: Int { return queueL.count + queueR.count }
    
    mutating func enqueue(_ newElement: Int) {
        queueL.append(newElement)
    }
    
    mutating func dequeue() -> Int {
        if queueR.isEmpty {
            queueR = queueL.reversed()
            queueL.removeAll()
        }
        return queueR.popLast()!
    }
}

class MyStack {
    var queueA: IntegetQueue
    var queueB: IntegetQueue
    
    init() {
        queueA = IntegetQueue()
        queueB = IntegetQueue()
    }
    
    func swap() {
        (queueA,queueB) = (queueB,queueA)
    }
    
    func shift() {
        while queueA.size != 1 {
            queueB.enqueue(queueA.dequeue())
        }
    }
    
    func push(_ x: Int) {
        queueA.enqueue(x)
    }
    
    func pop() -> Int {
        shift()
        let popObjext = queueA.dequeue()
        swap()
        return popObjext
    }
    
    func top() -> Int {
        shift()
        let topObj = queueA.peek
        queueB.enqueue(queueA.dequeue())
        swap()
        return topObj
    }
    
    func empty() -> Bool {
        return queueA.isEmpty && queueB.isEmpty
    }
}



