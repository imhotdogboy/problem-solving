//
//  2270.swift
//  problem-solving
//
//  Created by hotdogboy on 1/4/25.
//

import Foundation

class Solution {
    func waysToSplitArray(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.reduce(0, +)
        var answer = 0
        
        for i in 0..<nums.count - 1 {
            left += nums[i]
            right -= nums[i]
            if left >= right { answer += 1 }
        }
        
        return answer
    }
}
