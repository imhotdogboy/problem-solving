//
//  1800.swift
//  problem-solving
//
//  Created by hotdogboy on 2/4/25.
//

import Foundation

class Solution {
    func maxAscendingSum(_ nums: [Int]) -> Int {
        var buffer: [Int] = []
        var answer = 0
        
        for i in 1..<nums.count {
            if nums[i - 1] < nums[i] {
                buffer.append(nums[i])
            } else {
                answer = max(buffer.reduce(0, +), answer)
                buffer = [nums[i]]
            }
        }
        
        answer = max(buffer.reduce(0, +), answer)
        return answer
    }
}
