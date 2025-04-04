//
//  169.swift
//  problem-solving
//
//  Created by hotdogboy on 4/4/25.
//

import Foundation

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var count = 0
        var candidate = 0
        
        for num in nums {
            // Boyer-Moore majority vote algorithm
            if count == 0 { candidate = num }
            // If number is candidate, increase count
            count += num == candidate ? 1 : -1
        }
        
        return candidate
    }
}
