import Foundation
///https://leetcode-cn.com/problems/partitioning-into-minimum-number-of-deci-binary-numbers/
func minPartitions(_ n: String) -> Int {
    return n.compactMap{ str in Int(String(str))}.max()!
}

