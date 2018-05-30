//: Playground - noun: a place where people can play

import UIKit
//可选值
/*
 enum Optional<Wrapped>{
    case none
    case some(Wrapped)
 }
 
 */
var array = ["one","two","three"]
let idx = array.index(of: "Four")

switch array.index(of: "four") {
case .some(let idx):
    array.remove(at: idx)
default:
    break
}
