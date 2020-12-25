func isPalindrome(_ x: Int) -> Bool{
    if x < 0{
        return false
    }
    
    var temp = 0
    var remainder = x
    while remainder != 0 {
        temp *= 10
        temp += remainder % 10
        remainder = remainder / 10
    }
    
    return temp == x
}

