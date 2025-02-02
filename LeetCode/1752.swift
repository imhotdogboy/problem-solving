//
//  1752.swift
//  problem-solving
//
//  Created by hotdogboy on 2/2/25.
//

import Foundation

class Solution {
    func check(_ nums: [Int]) -> Bool {
        var counter = 0
        
        for i in 1..<nums.count {
            if nums[i - 1] > nums[i] { counter += 1 }
        }
        
        if counter == 0 {
            return true
        } else if counter == 1 {
            if nums.first! >= nums.last! { return true }
        }
        return false
    }
}
