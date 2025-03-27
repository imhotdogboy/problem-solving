//
//  27.swift
//  problem-solving
//
//  Created by hotdogboy on 3/27/25.
//

import Foundation

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        // Track position to place next element
        var pointer = 0
        
        for i in 0..<nums.count {
            if nums[i] != val {
                // Place num at next position
                nums[pointer] = nums[i]
                // Move pointer to next position
                pointer += 1
            }
        }
        
        return pointer
    }
}
