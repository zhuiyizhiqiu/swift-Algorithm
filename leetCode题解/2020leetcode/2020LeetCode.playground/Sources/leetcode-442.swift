import Foundation

func findDuplicates(_ nums: [Int]) -> [Int] {
    let arr = nums.sorted()
    var returrnArray:[Int] = []
    for (i,j) in zip(arr, arr.dropFirst()){
        if i == j{
            returrnArray.append(i)
        }
    }
    
    return returrnArray
}
