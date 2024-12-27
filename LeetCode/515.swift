//
//  515.swift
//  problem-solving
//
//  Created by hotdogboy on 12/27/24.
//

import Foundation

// Definition for a binary tree node
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func largestValues(_ root: TreeNode?) -> [Int] {
        guard let _ = root else { return [] }
        
        var queue = Queue<(TreeNode, Int)>()
        var maxVal: [Int: Int] = [:]
        queue.enqueue((root!, 0))
        var answer: [Int] = []
        
        while !queue.isEmpty {
            let node = queue.dequeue()!
            maxVal[node.1] = max(node.0.val, maxVal[node.1, default: Int.min])
            
            if let left = node.0.left {
                queue.enqueue((node.0.left!, node.1 + 1))
            }
            if let right = node.0.right {
                queue.enqueue((node.0.right!, node.1 + 1))
            }
        }
        
        let sorted = maxVal.sorted { $0.key < $1.key }
        for value in sorted { answer.append(value.value) }
        return answer
    }
}

struct Queue<T> {
    private var queue: [T] = []
    
    public var count: Int {
        return queue.count
    }
    
    public var isEmpty: Bool {
        return queue.isEmpty
    }
    
    public mutating func enqueue(_ element: T) {
        queue.append(element)
    }
    
    public mutating func dequeue() -> T? {
        return isEmpty ? nil : queue.removeFirst()
    }
}
