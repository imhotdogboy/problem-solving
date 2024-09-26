//
//  1367.swift
//  problem-solving
//
//  Created by hotdogboy on 9/7/24.
//

import Foundation

// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

// Definition for a binary tree node.
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
    func isSubPath(_ head: ListNode?, _ root: TreeNode?) -> Bool {
        // Base case
        if root == nil { return false }
        
        // Check isSubPath
        if dfs(head, root) { return true }
        
        // Check left and right subtree
        return isSubPath(head, root?.left) || isSubPath(head, root?.right)
    }
    
    // DFS search to check isSubPath
    func dfs(_ head: ListNode?, _ node: TreeNode?) -> Bool {
        // Identical
        if head == nil { return true }
        
        // Tree node is nil or doesn't match
        if node == nil || head!.val != node!.val {
            return false
        }
        
        // Check left and right subtree
        return dfs(head?.next, node?.left) || dfs(head?.next, node?.right)
    }
}
