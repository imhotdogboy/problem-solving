//
//  80.swift
//  problem-solving
//
//  Created by hotdogboy on 3/30/25.
//

import Foundation

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        // If nums has 0 or 1 elements, do nothing
        guard nums.count > 1 else { return nums.count }
        // Track position to place next element
        var pointer = 1
        
        for i in 2..<nums.count {
            if nums[i] != nums[pointer] || nums[i] != nums[pointer - 1] {
                // Move pointer to next position
                pointer += 1
                // Place num at next position
                nums[pointer] = nums[i]
            }
        }
        
        return pointer + 1
    }
}
