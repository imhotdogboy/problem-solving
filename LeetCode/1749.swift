//
//  1749.swift
//  problem-solving
//
//  Created by hotdogboy on 2/26/25.
//

import Foundation

class Solution {
    func maxAbsoluteSum(_ nums: [Int]) -> Int {
        var sum = (0, nums[0])
        var minSum = min(0, nums[0])
        var maxSum = max(0, nums[0])
        var answer = abs(nums[0])
        
        for i in 1..<nums.count {
            sum = (sum.1, sum.1 + nums[i])
            if sum.0 < minSum { minSum = sum.0 }
            if sum.0 > maxSum { maxSum = sum.0 }
            answer = max(abs(sum.1 - minSum), answer)
            answer = max(abs(sum.1 - maxSum), answer)
        }
        
        return answer
    }
}
