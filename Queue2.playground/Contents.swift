//: Playground - noun: a place where people can play

import UIKit

///一个能够将元素入队和出队的类型
protocol Queue{
    ///在self中所持有的元素类型
    associatedtype Element
    ///将newElement入队到self
    mutating func enqueue(_ newElement: Element)
    ///从self出队一个元素
    mutating func dequeue() -> Element?
}

///一个高效的FIFO队列，其中元素类型为Element
struct FIFOQueue<Element>:Queue{
    private var left:[Element] = []
    private var right:[Element] = []
    
    ///将元素添加到队列最后
    ///复杂度：O(1)
    mutating func enqueue(_ newElement: Element) {
        right.append(newElement)
    }
    
    ///队列前端移除一个元素
    ///当队列为空时，返回nil
    /// - 复杂度：平摊O(1)
    mutating func dequeue() -> Element? {
        if left.isEmpty {
            left = right.reversed()
            right.removeAll()
        }
        
        return left.popLast()
    }
}
