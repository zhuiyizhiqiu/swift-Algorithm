import Foundation

func reformatNumber(_ number: String) -> String {
    let arr = number.filter{ $0 <= "9" && $0 >= "0" }.map{ $0 }
    if arr.count == 4{
        return String(arr[0]) + String(arr[1]) + "-" + String(arr[2]) + String(arr[3])
    }
    var str = String(arr.first!)
    for i in 1..<arr.count{
        if i % 3 == 0{
            if i == arr.count - 4{
                str +=  "-" + String(arr[i]) + String(arr[i + 1]) + "-" + String(arr[i + 2]) + String(arr[i + 3])
                break
            }
            str += "-" + String(arr[i])
        }else{
            str += String(arr[i])
        }
    }
    
    return str
}
