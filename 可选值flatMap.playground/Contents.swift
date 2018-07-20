import UIKit
import PlaygroundSupport
let stringNumbers = ["1","2","3","4"]
let x = stringNumbers.first.map{Int($0)}
let y = stringNumbers.first.flatMap{Int($0)}

let urlString = "https:www.objc.io/logo.png"
let view = URL(string: urlString).flatMap{try? Data(contentsOf: $0)}.flatMap{UIImage(data: $0)}.map {UIImageView(image: $0)}
if let view = view{
    PlaygroundPage.current.liveView = view
}

let numbers = ["1","2","3","foo"]
var sum = 0
for case let i? in numbers.map({Int($0)}) {
    sum += i
}
sum

infix operator !!
func !!<T>(wrapped: T?, failureText: @autoclosure() -> String) -> T{
    if let x = wrapped{
        return x
    }
    fatalError(failureText())
}
let s = "foo"
//let i = Int(s) !! "Expecting integer,got\"\(s)"
