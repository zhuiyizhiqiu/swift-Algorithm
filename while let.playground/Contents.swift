//: Playground - noun: a place where people can play

import UIKit

let array = [1,2,3]
var iterator = array.makeIterator()
while let i = iterator.next() {
    print(i)
}

var iterator2 = (0..<10).makeIterator()

while let i = iterator2.next(){
    if i % 2 == 0{
        print(i)
    }
}

var functions: [() -> Int] = []
for i in 1...3 {
    functions.append{i}
}

for f in functions{
    print("\(f())",terminator:" ")
}

