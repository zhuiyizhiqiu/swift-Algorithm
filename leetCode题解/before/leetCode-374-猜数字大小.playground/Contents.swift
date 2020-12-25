func guessNumber(_ n: Int) -> Int{
    var left = 1
    var right = n
    while left < right {
        let mid = (left + right) / 2
        if guessNumber(mid) == 0{
            return mid
        }else if guessNumber(mid) == 1{
            left = mid + 1
        }else{
            right = mid - 1
        }
    }
    return left
}
