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
var array = FIFOQueue<Int>()
array.enqueue(2)
array.dequeue()
array.dequeue()
array.dequeue()

///precondition的用法与assert类似，当条件不满足时，则终止程序，并打印出你设置的messag或者默认的错误信息
extension FIFOQueue: Collection{
    public var startIndex: Int{return 0}
    public var endIndex: Int{return left.count + right .count}
    
    public func index(after i: Int) -> Int {
        precondition(i < endIndex)
        return i + 1
    }
    
    public subscript(position: Int) -> Element{
        precondition((0..<endIndex).contains(position),"Index out of bounds")
        if position < left.endIndex{
            return left[left.count - position - 1]
        }else{
            return right[position - left.count]
        }
    }
    
    typealias Indices = CountableRange<Int>
    var indices: CountableRange<Int>{
        return startIndex..<endIndex
    }
}

var q = FIFOQueue<String>()
for x in ["1","2","foo","3"]{
    q.enqueue(x)
}

for s in q {
    print(s,terminator:" ")
}
var a = Array(q)
a.append(contentsOf: a[2...3])
a

q.map{$0.uppercased()}
q.flatMap{Int($0)}
q.filter{$0.count > 1}
q.sorted()
q.joined(separator: " ")

q.isEmpty
q.count
q.first

extension FIFOQueue: ExpressibleByArrayLiteral{
    public init(arrayLiteral elements: Element...) {
        left = elements.reversed()
        right = []
    }
}

let queue: FIFOQueue = [1,2,3,4]


