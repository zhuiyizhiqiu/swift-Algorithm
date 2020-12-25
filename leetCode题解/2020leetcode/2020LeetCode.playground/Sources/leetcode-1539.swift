import Foundation

func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
    var count = 1
    var temp = 1
    var n = k
    while n != 0 {
        if !arr.contains(temp){
            n -= 1
            count = temp
        }
        temp += 1
    }

    return count
}
