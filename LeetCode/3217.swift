//
//  3217.swift
//  problem-solving
//
//  Created by hotdogboy on 9/6/24.
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
    func modifiedList(_ nums: [Int], _ head: ListNode?) -> ListNode? {
        var nums = Set(nums)
        var head = head
        
        // Remove nodes from beginning
        while head != nil && nums.contains(head!.val) {
            head = head!.next
        }
        
        var node = head
        while node != nil && node!.next != nil {
            if nums.contains(node!.next!.val) {
                // Remove node with matching value
                node!.next = node!.next!.next
            } else {
                // Move to the next node
                node = node!.next
            }
        }
        
        return head
    }
}
