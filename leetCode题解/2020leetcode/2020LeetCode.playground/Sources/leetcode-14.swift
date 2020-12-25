import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    guard strs.count > 0 else{
        return ""
    }
    let arr = strs.sorted()
    var current = arr.first!
    var result = ""
    for i in arr{
        for (n,m) in zip(current, i){
            if n == m{
                result += String(n)
            }else{
                break
            }
        }
        current = result
        result = ""
    }
    return current
}
