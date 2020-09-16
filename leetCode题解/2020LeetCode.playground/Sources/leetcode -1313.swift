import Foundation

func restoreString(_ s: String, _ indices: [Int]) -> String {
    var dic: [Int: String] = [:]
    var str = ""
    for (i,j) in zip(indices, s){
        dic[i] = String(j)
    }
    let temp = dic.sorted { (k1, k2) -> Bool in
        k1.key < k2.key
    }
    
    for i in temp{
        str += i.value
    }
    
    return str
}
