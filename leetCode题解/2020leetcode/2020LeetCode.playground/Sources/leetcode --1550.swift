// 1550 存在连续三个奇数的数组

func threeConsecutiveOdds(_ arr: [Int]) -> Bool {
    guard arr.count >= 3 else {
        return false
    }
    
    for i in 0...arr.count-3{
        if arr[i] % 2 == 1, arr[i + 1] % 2 == 1, arr[i + 2] % 2 == 1{
            return true
        }
    }
    
    return false
    
}

