//: Playground - noun: a place where people can play
//pengjuntao

import UIKit
import XCPlayground

public struct Stack<T> {
    private var elements = [T]()
    public init(){}
    public init<S: Sequence>(_ s: S) where S.Iterator.Element == T{
        self.elements = Array(s.reversed())
    }
    
    public mutating func pop() -> T?{
        return self.elements.popLast()
    }

    public mutating func push(element: T){
        self.elements.append(element)
    }

    public func peek() -> T?{
        return self.elements.last
    }

    public func isEmpty() -> Bool{
        return self.elements.isEmpty
    }

    public var count: Int{
        return self.elements.count
    }
}

var myStack = Stack<Int>()

//myStack.push(element: 5)
//myStack.push(element: 44)
//myStack.push(element: 33)
//
//var x = myStack.pop()
//x = myStack.pop()


extension Stack: CustomStringConvertible,CustomDebugStringConvertible{
    public var debugDescription: String {
        return self.elements.debugDescription
    }

    public var description: String{
        return self.elements.description
    }
}


extension Stack: ExpressibleByArrayLiteral{
    public init(arrayLiteral elements: T...) {
        self.init(elements)
    }
}

//myStack.description
//myStack
//myStack.debugDescription
//print(myStack.description)
//print(myStack.debugDescription)
myStack = [1,2,3]
//let a = Array(b.reversed())
//print(a)

extension Stack: Sequence{
    public func makeIterator() -> AnyIterator<T> {
        return AnyIterator(IndexingIterator(_elements:self.elements.lazy.reversed()))
    }
}

var myStackFromStack = Stack<Int>(myStack)
myStackFromStack
myStackFromStack.push(element: 55)


//extension Stack: ExpressibleByArrayLiteral {
//    
//    public init(arrayLiteral elements: T...) {
//        self.init(elements)
//    }
//}
//var myStackNew = [5,6,7,8]

//extension Stack: ExpressibleByArrayLiteral{
//
//    public init(arrayLiteral elements: T...) {
//        self.init()
//        for element in elements {
////            self.append(element)
//        }
//    }
//}



//public struct ArrayStack<T> {
//
//    fileprivate var elements = [T]()
//
//    public init() {}
//
//    public init<S : Sequence>(_ s: S) where S.Iterator.Element == T {
//        self.elements = Array(s.reversed())
//    }
//
//    mutating public func pop() -> T? {
//        return self.elements.popLast()
//
//    }
//
//    mutating public func push(element: T){
//        self.elements.append(element)
//    }
//
//    public func peek() -> T? {
//        return self.elements.last
//    }
//
//    public func isEmpty() -> Bool {
//        return self.elements.isEmpty
//    }
//
//    public var count: Int {
//        return self.elements.count
//    }
//
//}
//
////: Implement support to support array literal notation. This allows you to write code like the following:
////: `var myStack: ArrayStack<Int> = [4, 5, 6, 7]`
//
//extension ArrayStack: ExpressibleByArrayLiteral {
//
//    public init(arrayLiteral elements: T...) {
//        self.init(elements)
//    }
//}







