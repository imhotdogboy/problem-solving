//
//  26.swift
//  problem-solving
//
//  Created by hotdogboy on 3/28/25.
//

import Foundation

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        // Track position to place next element
        var pointer = 0
        
        for i in 0..<nums.count {
            if nums[i] != nums[pointer] {
                // Move pointer to next position
                pointer += 1
                // Place num at next position
                nums[pointer] = nums[i]
            }
        }
        
        return pointer + 1
    }
}
