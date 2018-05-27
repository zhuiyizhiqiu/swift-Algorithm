# swift-Algorithm

## stack，用swift实现的

## queue，用swift实现的

### 用swift完成一个简单的算法
 题目：寻找到100以内同时满足是偶数并且还是其他数字的平方的数字
   
    (1...<10).map{$0 * $0}.filter{ $0 % 2 == 0}
    //[4,16,36,64]
  
### 用迭代器实现斐波那契数

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
    
    
 ###高效的FIFOQueue

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
      
      
