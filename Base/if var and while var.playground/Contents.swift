import UIKit

extension String{
    var fileExtension: String?{
        guard let period = index(of:".") else {
            return nil
        }
        let extensionStart = index(after: period)
        return String(self[extensionStart...])
    }
}
"hello.txt".fileExtension
///optional chaining

var dictOfArrays = ["nine":[1,2,3]]
dictOfArrays["nine"]? = [3]
let dictOfFunctions: [String:(Int,Int) -> Int] = [
    "add": (+),
    "subtract": (-)
]
dictOfFunctions["add"]?(1,1)
var a:Int? = 5
///无条件赋值
a = 10
//仅在a被赋值前不为nil才被赋值
a? = 19
//print(a)

struct Person{
    var name: String
    var age: Int
}

var optionalLisa: Person? = Person(name: "Lisa Simpson", age: 8)
optionalLisa?.age += 1
print(optionalLisa?.age)

