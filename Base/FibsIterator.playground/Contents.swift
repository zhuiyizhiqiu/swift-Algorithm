//: Playground - noun: a place where people can play
//pengjuntao QQ:1124719223
import UIKit

struct Fibsiterator: IteratorProtocol{
    var state = (0,1)
    mutating func next() -> Int?{
        let upcomingNumber = state.0
        state = (state.1,state.0 + state.1)
        return upcomingNumber
    }
}

var fibs = Fibsiterator()

while let fibs = fibs.next(),fibs < 10000000000 {
    print(fibs)
}
