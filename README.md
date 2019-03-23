# swift-Algorithm

## swift5 即将发布，算法后期会以swift5 进行更新 

## 新增leetcode题解--swift版本哦   [leetcode题解](https://github.com/zhuiyizhiqiu/swift-Algorithm/tree/master/leetCode题解)

## stack，用swift实现的

## queue，用swift实现
### 高效的FIFOQueue

先设计一个Queue的协议
    
    protocol Queue{
      associatedtype Element
      mutating func enqueue(_ newElement: Element)
      mutating func dequeue() -> Element?
    }
    
    ///一个高效的FIFO队列，其元素类型为Element
    struct FIFOQueue<Element>:Queue{
      private var left: [Element] = []
      private var right: [Element] = []
      
      mutating func enquene(_ newElement: Element){
        right.append(newElement)
      }
      
      mutating func dequenue() -> Element?{
        if left.isEmpty{
          left = right.reversed()
          right.removeAll()
        }
        return left.popLast()
      }
    }
    
为什么我们要用两个数组来实现这个队列呢？其主要原因是为了效率，可以思考一下这样设置的妙处哈！！！

接下啦我们为FIFOQueue添加Collection协议
    
    extension FIFOQueue: Collection{
    public var startIndex: Int{return 0}
    public var endIndex: Int{return left.count + right .count}
    
    //precondition的用法与assert类似，当条件不满足时，则终止程序，并打印出你设置的message或者默认的错误提示
    public func index(after i: Int) -> Int {
        precondition(i < endIndex)
        return i + 1
    }
    
    public subscript(position: Int) -> Element{
        precondition((0..<endIndex).contains(position),"Index out of bounds")
        if position < left.endIndex{
            return left[left.count - position - 1]
        }else{
            return right[position - left.count]
        }
    }
    
    typealias Indices = CountableRange<Int>
    var indices: CountableRange<Int>{
        return startIndex..<endIndex
     }
    }
   
为了让我们用熟悉的[value1,value2,ect]语法创建一个队列，我们可以让FIFOQueue遵守ExpressibleByArrayLiteral协议
    
    extension FIFOQueue: ExpressibleByArrayLiteral{
    public init(arrayLiteral elements: Element...) {
        left = elements.reversed()
        right = []
      }
    }


## 用swift完成一个简单的算法
 题目：寻找到100以内同时满足是偶数并且还是其他数字的平方的数字
   
    (1...<10).map{$0 * $0}.filter{ $0 % 2 == 0}
    //[4,16,36,64]
  
## 用迭代器实现斐波那契数

还记得我们最常见的for in 循环吗？ 他的实现就是基于迭代器
    
    protocol Sequence {
       associatedtype Iteraator: IteratorProtocol
       func makeIterator() -> Iterator
       //...
     }
     
     protocol IteratorProtocol {
        associatedtype Element
        mutating func next() -> Element?
     }
     
     //那么for in 循环是怎么实现的呢？
     
     var iterator = someSequence.makeIterator()
     while let element = iterator.next() {
        doSomething(with: element)
      }
      
那么斐波那契序列怎么依靠迭代器实现呢？
     
     struct Fibs: ItreatorProtocol {
         var  state = (0,1)
         mutating func next() -> Int? {
            let upcomingNumber = state.0
            state = (state.1,state.0 + state.1)
            return upcomingNumber
         }
      }
      
      //这样就实现了斐波那契数列
      //那么要如何使用呢？
      
      var textFib = Fib()
      while let fib = textFib.next(), fib < 1000000000{
           print(fib)
       }
       
       这样就很顺利的打印了1000000000以内的斐波那契数，而且速度很快
    
    
 ## swift4.2实现List
    class ListNode{
        var val: Int
        var next: ListNode?
    
        init(_ val: Int) {
            self.val = val
            self.next = nil
        }
    }

    class List{
        var head: ListNode?
        var real: ListNode?
    
        //尾插法
        func appendToReal(_ val: Int){
             if real == nil {
                 real = ListNode(val)
                 head = real
             }else{
                real!.next = ListNode(val)
                real = real!.next
            }
        }
    
        //头插法
        func appendToHead(_ val: Int){
             if head == nil{
                head = ListNode(val)
                real = head
            }else{
                let temp = ListNode(val)
                temp.next = head
                head = temp
            }
        }
    
        func printList(){
            var temp = head
            while temp != nil {
                print(temp!.val)
                temp = temp!.next
            }
        }
        }

    let textList = List()
       [1,2,3,4,5].map{
       textList.appendToHead($0)
       }
    textList.printList()

      
