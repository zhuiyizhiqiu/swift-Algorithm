import Foundation

func decompressRLElist(_ nums: [Int]) -> [Int] {
    var count = 0
    var arr:[Int] = []
    
    while count < nums.count {
        let temp = repeatElement(nums[count + 1], count: nums[count])
        arr += temp
        count += 2
    }
    return arr
}
