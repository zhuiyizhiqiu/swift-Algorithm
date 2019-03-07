import UIKit

var s = ""
let nmbers = [1,2,3,4]
print(nmbers, to: &s)
s

var printCaputer = ""
_playgroundPrintHook = {
    text in
    printCaputer += text
}

print("This is supposed to only go to stdout")
printCaputer

struct ArrayStream: TextOutputStream{
    var buffer: [String] = []
    mutating func write(_ string: String) {
        buffer.append(string)
    }
}

var steam = ArrayStream()
print("Hello", to: &steam)
print("World", to: &steam)
steam.buffer

