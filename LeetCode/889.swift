//
//  889.swift
//  problem-solving
//
//  Created by hotdogboy on 2/23/25.
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

class Solution {
    func constructFromPrePost(_ preorder: [Int], _ postorder: [Int]) -> TreeNode? {
        guard !preorder.isEmpty && !postorder.isEmpty else { return nil }
        
        let root = TreeNode(preorder[0])
        if preorder.count == 1 { return root }
        
        // Find the index of left subtree root
        let leftRootIndex = postorder.firstIndex(of: preorder[1])!
        
        // Recursively construct the left subtree
        let leftPre = Array(preorder[1...leftRootIndex + 1])
        let leftPost = Array(postorder[0...leftRootIndex])
        root.left = constructFromPrePost(leftPre, leftPost)
        
        // Recursively construct the right subtree
        if leftRootIndex + 2 < preorder.count {
            let rightPre = Array(preorder[leftRootIndex + 2..<preorder.count])
            let rightPost = Array(postorder[leftRootIndex + 1..<postorder.count - 1])
            root.right = constructFromPrePost(rightPre, rightPost)
        }
        
        return root
    }
}
