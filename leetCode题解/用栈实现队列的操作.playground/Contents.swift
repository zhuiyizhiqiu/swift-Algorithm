import UIKit
//leetcode 232用栈实现队列
protocol Stack{
    associatedtype Element
    
    var isEmpty: Bool { get }
    var peek: Element { get }
    var size: Int { get }
    
    mutating func push(_ newElement: Element)
    
    mutating func pop() -> Element
}

struct IntegerStack: Stack{
    typealias Element = Int
    
    private var stack = [Element]()
    
    var isEmpty: Bool { return stack.isEmpty }
    var peek: Int { return stack.last! }
    var size: Int { return stack.count }
    
    mutating func push(_ newElement: Int) {
        stack.append(newElement)
    }
    
    mutating func pop() -> Int {
        return stack.popLast()!
    }
    
}

class MyQueue{
    var stackA: IntegerStack
    var stackB: IntegerStack
    
    init() {
        stackA = IntegerStack()
        stackB = IntegerStack()
    }
    
    func shift() {
        if stackB.isEmpty {
            while !stackA.isEmpty {
                stackB.push(stackA.pop())
            }
        }
    }
    
    func peek() -> Int {
        shift()
       return stackB.peek
    }
    
    
    func pop() -> Int {
        shift()
        return stackB.pop()
    }
    
    func push(_ x: Int) {
        stackA.push(x)
    }
    
    func empty() -> Bool{
        return stackA.isEmpty && stackB.isEmpty
    }
}
