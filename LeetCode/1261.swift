//
//  1261.swift
//  problem-solving
//
//  Created by hotdogboy on 2/21/25.
//

import Foundation

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

class FindElements {
    var nodes = Set<Int>()
    
    init(_ root: TreeNode?) {
        build(root!, 0)
        func build(_ node: TreeNode, _ val: Int) {
            nodes.insert(val)
            if let left = node.left { build(left, 2 * val + 1) }
            if let right = node.right { build(right, 2 * val + 2) }
            return
        }
    }
    
    func find(_ target: Int) -> Bool {
        return nodes.contains(target)
    }
}

/**
 * Your FindElements object will be instantiated and called as such:
 * let obj = FindElements(root)
 * let ret_1: Bool = obj.find(target)
 */
