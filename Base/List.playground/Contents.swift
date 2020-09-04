//: Playground - noun: a place where people can play

import UIKit

enum List<Element>{
    case end
    indirect case node(Element,next:List<Element>)
}

let start = List<Int>.end
let oneElement = List.node(2, next: start)

extension List{
    func cons(_ x:Element) -> List{
        return .node(x,next:self)
    }
}

let list = List<Int>.end.cons(2).cons(3)

extension List: ExpressibleByArrayLiteral{
    init(arrayLiteral elements: Element...) {
        self = elements.reversed().reduce(.end, { (pro, element) in
            pro.cons(element)
        })
    }
}

let list2: List<Int> = [3,2,1]

extension List{
    mutating func push(_ x: Element){
        self = self.cons(x)
    }
    
    mutating func pop() -> Element?{
        switch self {
        case .end:
            return nil
        case let .node(x,next: tail):
            self = tail
            return x
            
        }
    }
}

extension List: IteratorProtocol,Sequence{
    mutating func next() -> Element? {
        return pop()
    }
}

var listText: List<Int> = [1,2,3]
listText.next()

