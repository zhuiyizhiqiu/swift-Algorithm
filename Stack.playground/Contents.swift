//: Playground - noun: a place where people can play
//pengjuntao

import UIKit

public struct Stack<T> {
    private var element = [T]()
    public init(){}
    
    public mutating func pop() -> T?{
        return self.element.popLast()
    }
    
    public mutating func push(element: T){
        self.element.append(element)
    }
    
    public func peek() -> T?{
        return self.element.last
    }
    
    public func isEmpty() -> Bool{
        return self.element.isEmpty
    }
    
    public var count: Int{
        return self.element.count
    }
}

var myStack = Stack<Int>()

myStack.push(element: 5)
myStack.push(element: 44)
myStack.push(element: 33)

var x = myStack.pop()
x = myStack.pop()
x = myStack.pop()
x = myStack.pop()

