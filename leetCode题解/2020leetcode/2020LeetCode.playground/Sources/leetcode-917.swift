import Foundation

func reverseOnlyLetters(_ S:String) -> String{
    var arr = S.reversed().filter{ ($0 <= "z" && $0 >= "a" ) || ($0 <= "Z" && $0 >= "A")}
    print(arr)
    for i in S.enumerated(){
        print(i)
        if !((i.element <= "Z" && i.element >= "A") || (i.element >= "a" && i.element <= "z")){
            arr.insert(contentsOf: String(i.element), at: i.offset)
        }
    }
    
    return String(arr)
}
