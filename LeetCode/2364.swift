//
//  2364.swift
//  problem-solving
//
//  Created by hotdogboy on 2/9/25.
//

import Foundation

class Solution {
    func countBadPairs(_ nums: [Int]) -> Int {
        var values: [Int: Int] = [:]
        var count = nums.count
        var goodPairs = 0
        
        for i in 1...count {
            let j = count - i
            goodPairs += values[nums[j] - j, default: 0]
            values[nums[j] - j, default: 0] += 1
        }
        
        return count * (count - 1) / 2 - goodPairs
    }
}
