//
//  2807.swift
//  problem-solving
//
//  Created by hotdogboy on 9/10/24.
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

class Solution {
    func insertGreatestCommonDivisors(_ head: ListNode?) -> ListNode? {
        var node = head
        
        while node != nil && node!.next != nil {
            // Calculate GCD
            let newVal = GCD(max(node!.val, node!.next!.val), min(node!.val, node!.next!.val))
            // Insert new node
            node!.next = ListNode(newVal, node!.next)
            node = node!.next!.next
        }
        
        return head
    }
    
    // Calculate GCD
    func GCD(_ a: Int, _ b: Int) -> Int {
        if b == 0 { return a }
        return GCD(b, a % b)
    }
}
