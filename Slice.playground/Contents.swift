//: Playground - noun: a place where people can play

import UIKit

extension Substring{
    var nextWordRange: Range<Index>{
        let start = drop(while: {$0 == " "})
        let end = start.index(where: {$0 == " "}) ?? endIndex
        return start.startIndex..<end
    }
}

struct WordsIndex: Comparable{
    fileprivate let range: Range<Substring.Index>
    fileprivate init(_ value: Range<Substring.Index>){
        self.range = value
    }
    
    static func < (lhs: Words.Index, rhs: Words.Index) -> Bool{
        return lhs.range.lowerBound < rhs.range.lowerBound
    }
    
    static func == (lhs: Words.Index,rhs: Words.Index) -> Bool{
        return lhs.range == rhs.range
    }
}

struct Words: Collection{
    let string: Substring
    let startIndex: WordsIndex
    
    init(_ s: String) {
        self.init(s[...])
    }
    
    private init(_ s: Substring){
        self.string = s
        self.startIndex = WordsIndex(string.nextWordRange)
    }
    
    var endIndex: WordsIndex{
        let e = string.endIndex
        return WordsIndex(e..<e)
    }
}

extension Words{
    subscript(index: WordsIndex) -> Substring{
        return string[index.range]
    }
}

extension Words{
    func index(after i: WordsIndex) -> WordsIndex {
        guard i.range.upperBound < string.endIndex else{
            return endIndex
        }
        
        let remainder = string[i.range.upperBound...]
        return WordsIndex(remainder.nextWordRange)
    }
}
Array(Words("hello world teat")).prefix(2)

let words: Words = Words("one two three")
let onePastStart = words.index(after:words.startIndex)
let firstDropped = words[onePastStart..<words.endIndex]
Array(firstDropped)

let firstDrooped2 = words.suffix(from: onePastStart)

let firstDrooped3 = words[onePastStart...]

extension Words{
    subscript(range:Range<WordsIndex>) -> Words{
        let start = range.lowerBound.range.lowerBound
        let end = range.upperBound.range.upperBound
        return Words(string[start..<end])
    }
}

struct PrefixIterator<Base:Collection>: IteratorProtocol,Sequence{
    let base: Base
    var offset: Base.Index
    
    init(_ base: Base) {
        self.base = base
        self.offset = base.startIndex
    }
    
    mutating func next() -> Base.SubSequence? {
        guard offset != base.endIndex else {
            return nil
        }
        base.formIndex(after: &offset)
        return base.prefix(upTo: offset)
    }
}

let numbers = [1,2,3]
Array(PrefixIterator(numbers))


