import Foundation

func countSegments(_ s: String) -> Int {
    return s.components(separatedBy: " ").filter{ $0 != ""}.count
}
//第二种方法
func countSegmentsTwo(_ s: String) -> Int {
    return s.split(separator: " ").count
}
