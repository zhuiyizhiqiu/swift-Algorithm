//: Playground - noun: a place where people can play

import UIKit

let stringNumbers = ["1","2","three"]
let maybeInts = stringNumbers.map{ Int($0)}

var iterator = maybeInts.makeIterator()
//现在的iterator.netx()就是  Int??
//while let maybeInt = iterator.next() {
//    print(maybeInt,terminator:" ")
//}
print("00")

let j = 5
if case 0..<10 = j{
    print("\(j)")
}

let number = "1"
if var i = Int(number) {
    i += i
    print(i)
}

let array = [1,2,3]
if !array.isEmpty{
    print(array[0])
}


