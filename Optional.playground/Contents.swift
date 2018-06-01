//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport
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

//let urlString = "https://www.objc.io/logo.png"
//if let url = URL(string: urlString),let data = try? Data(contentsOf: url),let image = UIImage(data: data){
//    let view = UIImageView(image: image)
//    PlaygroundPage.current.liveView = view
//}

let scanner = Scanner(string: "lisa123")
var username: NSString?
let alphas = CharacterSet.alphanumerics

if scanner.scanCharacters(from: alphas, into: &username) ,let name = username{
    print(name)
}

//while let line = readLine() {
//    print(line)
//}


