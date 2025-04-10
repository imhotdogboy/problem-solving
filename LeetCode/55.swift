//
//  55.swift
//  problem-solving
//
//  Created by hotdogboy on 4/10/25.
//

import Foundation

class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var farthest = 0
        
        for i in 0..<nums.count {
            if i > farthest { return false }
            farthest = max(i + nums[i], farthest)
        }
        return true
    }
}
