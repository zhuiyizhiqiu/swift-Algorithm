//: Playground - noun: a place where people can play

import UIKit

public struct Queue<T>{
    /// 构建一个空的队列
    private var data = [T]()
    
    public init(){}
    
    public init<S: Sequence>(_ elements: S) where S.Iterator.Element == T{
        data.append(contentsOf: elements)
    }
    
    ///删除队首的元素，并返回这个元素，如果队列为空则返回nil
    public mutating func depueue() -> T?{
        return data.removeFirst()
    }
    
    ///返回队首元素，如果队列为空则返回nil
    public func peek() -> T?{
        return data.first
    }
    
    /// 添加一个元素到队尾，时间复杂度为O(1)
    public mutating func enqueue(_ element: T){
        data.append(element)
    }
    
    ///清空队列
    public mutating func clear(){
        data.removeAll()
    }
    
    ///队列长度
    public var count: Int{
        return data.count
    }
    
    ///返回队列的容量
    public var capacity: Int{
        get{
            return data.capacity
        }
        
        set{
            data.reserveCapacity(newValue)
        }
    }
    
    ///判断队列是否为空
    public func isFull() -> Bool{
        return count == data.capacity
    }
    
    ///判断队列是否满了
    public func isEmpty() -> Bool{
        return data.isEmpty
    }
    
    ///检查队列是否越界
    private func checkIndex(index: Int){
        if index < 0 || index > count {
            fatalError("Index out of range")
        }
    }
}

extension Queue: CustomStringConvertible,CustomDebugStringConvertible{
    
    ///描述
    public var description: String{
        return data.description
    }
    
    public var debugDescription: String{
        return data.debugDescription
    }
}

extension Queue: ExpressibleByArrayLiteral{
    ///用数组的迭代构造队列
    public init(arrayLiteral elements: T...) {
        self.init(elements)
    }

}

//extension Queue: Sequence{
//    public func generate() -> AnyIterator<T>{
//        AnyIterator(IndexingIterator(_elements: data.lazy))
//    }
//}

extension Queue: MutableCollection{
    public var startIndex: Int{
        return 0
    }
    
    public var endIndex: Int{
        return count - 1
    }
    
    public func index(after i: Int) -> Int {
        return data.index(after: i)
    }
    
    public subscript(index: Int) -> T{
        get{
            checkIndex(index: index)
            return data[index]
        }
        
        set{
            checkIndex(index: index)
            data[index] = newValue
        }
    }
}
var queue = Queue<Int>()
queue.enqueue(100)
queue.enqueue(120)
queue.enqueue(125)
queue.enqueue(130)
queue.capacity
queue.count

let x = queue.depueue()
let y = queue.peek()
let z = queue.depueue()

var queue1 = Queue<Int>([1,2,3])
queue1.description

var q1: Queue<Int> = [1,2,3,4,5]
var q2 = Queue<Int>([1,2,3,4,5])

var q1x = q1.depueue()
q2.enqueue(55)
q2.startIndex
q2.endIndex


for el in q1 {
    print(el)
}



