//选择排序，第九个数据通过不了，需要优化
//func sortArray(_ nums: [Int]) -> [Int]{
//    let count = nums.count
//    var arr = nums
//    for i in 0..<count{
//        var temp = i
//        for j in (i + 1)..<count {
//            if arr[temp] > arr[j]{
//                temp = j
//            }
//        }
//        let n = arr[i]
//        arr[i] = arr[temp]
//        arr[temp] = n
//    }
//
//    return arr
//}
//sortArray([5,2,3,1])
//
//func sortArrayTwo(_ nums: [Int]) -> [Int]{
//    var arr = nums
//    let length = arr.count
//    var count = arr.count
//    repeat {
//        count = count / 3 + 1
//        for i in 0..<count {
//            for j in stride(from: i + count, to: length, by: count) {
//                if arr[j] < arr[j - count]{
//                    let temp = arr[j]
//                    for k in stride(from: j - count, to: 0, by: -count) {
//                        if temp > arr[k]{
//                            arr[k + count] = temp
//                            break
//                        }
//                        arr[k + count] = arr[k]
//                    }
//                }
//            }
//        }
//    }while(count > 1)
//
//    return arr
//
//}
//
////sortArrayTwo([2,1])
//for i in stride(from: 10, to: 1, by: -1){
//    print(i)
//}

