func containsDuplicate(_ nums: [Int]) -> Bool{
    let arr = nums.sorted(by: <)
    
    for (i,j) in zip(arr, arr.dropFirst()) {
        if i == j{
            return true
        }
    }
    
    return false
}
