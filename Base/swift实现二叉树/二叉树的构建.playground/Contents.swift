import UIKit
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init(_ val: Int){
        self.val = val
    }
}

struct createBTree{
    private var tree: TreeNode?
    
    mutating func insertValue(_ newElement: Int){
        if tree == nil {
            tree = TreeNode(newElement)
        }else{
            var p: TreeNode? = tree
            var q: TreeNode? = tree
            
            while p != nil {
                if p!.val < newElement{
                    q = p
                    p = p!.right
                }else{
                    q = p
                    p = p!.left
                }
            }
            
            let temp = TreeNode(newElement)
            if q!.val < newElement {
                q!.right = temp
            }else{
                q!.left = temp
            }
        }
    }
    

    private func preOrder(root: TreeNode?){
        if let root = root {
            print(root.val)
            preOrder(root: root.left)
            preOrder(root: root.right)
        }
    }
    
   
    private func inOrder(root: TreeNode?){
        if let root = root {
            inOrder(root: root.left)
            print(root.val)
            inOrder(root: root.right)
        }
    }
    
    
    private func postOrder(root:TreeNode?){
        if let root = root {
            postOrder(root: root.left)
            postOrder(root: root.right)
            print(root.val)
        }
    }
    
    ///先序遍历二叉树
    func perOrder(){
        print("先序遍历")
        preOrder(root: tree)
    }
    
     ///中序遍历二叉树
    func inOrder(){
        print("中序遍历")
        inOrder(root: tree)
    }
    
    ///后序l遍历二叉树
    func postOrder(){
        print("后序遍历")
        postOrder(root: tree)
    }
    
    private func maxDepth(root: TreeNode?) -> Int{
        guard let root = root else {
            return 0
        }
        
        return max(maxDepth(root: root.left), maxDepth(root: root.right)) + 1
    }
    
    ///返回树的最大深度
    func maxDepth() -> Int{
        return maxDepth(root: tree)
    }
}

var textBTree = createBTree()
[2,1,4,8,5,6,22,6].map{ textBTree.insertValue($0) }
textBTree.perOrder()
textBTree.inOrder()
textBTree.postOrder()
textBTree.maxDepth()
