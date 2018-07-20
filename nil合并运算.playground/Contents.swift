import UIKit
///如果tringteger转换为int失败，则number的值为默认的0
let stringteger = "1"
let number = Int(stringteger) ?? 0

let array = [1,2,3]
array.first ?? 0

<<<<<<< HEAD
extension Array{
    subscript(guarded idx: Int) -> Element?{
        guard(startIndex ..< endIndex).contains(idx) else{
            return nil
        }
        return self[idx]
    }
}


let i: Int? = nil
let j: Int? = nil
let k: Int? = nil
i ?? j ?? k ?? 0

let s1: String?? = nil
(s1 ?? "inner") ?? "outer"
let s2 : String?? = .some(nil)
(s2 ?? "inner") ?? "outer"

let bodyTemperature: Double? = 37.0
let bloodGlucose: Double? = nil
//print(bodyTemperature)
//print("Boold glucose level:\(bloodGlucose)")

infix operator ???: NilCoalescingPrecedence

public func ???<T>(optional: T?, defaultValue: @autoclosure() -> String) -> String{
    switch optional{
    case let value? :return String(describing: value)
    case nil: return defaultValue()
    }
}
print("Body temperature:\(bodyTemperature ??? "n/a")")
print("Blood glucose level: \(bloodGlucose ??? "n/a")")
=======
>>>>>>> parent of 8395b87... 数据集
