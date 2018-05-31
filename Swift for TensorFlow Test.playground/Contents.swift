//: Playground - noun: a place where people can play

import TensorFlow

let x = Tensor<Float>([[1,2],[3,4]])
print(x)

struct MLPClassfier{
    var w1 = Tensor<Float>(shape: [2,4], repeating: 0.1)
    var w2 = Tensor<Float>(shape: [4,1], scalars: [0.4,-0.5,-0.5,0.4])
    var b1 = Tensor<Float>([0.2,-0.3,-0.3,0.2])
    var b2 = Tensor<Float>([[0.4]])
    
    func prediction(for x: Tensor<Float>) -> Tensor<Float> {
        let o1 = tanh(x ⊗ w1 + b1)
        return tanh(o1 ⊗ w2 + b2)
    }
}

let input = Tensor<Float>([[0.2,0.8]])
let classfier = MLPClassfier()
let prediction = classfier.prediction(for: input)
print(prediction)

