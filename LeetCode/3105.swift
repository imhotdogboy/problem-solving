//
//  3105.swift
//  problem-solving
//
//  Created by hotdogboy on 2/3/25.
//

import Foundation

class Solution {
    func longestMonotonicSubarray(_ nums: [Int]) -> Int {
        var counter = 1
        var answer = 1
        
        for i in 1..<nums.count {
            if nums[i - 1] < nums[i] {
                counter += 1
            } else {
                answer = max(counter, answer)
                counter = 1
            }
        }
        
        answer = max(counter, answer)
        counter = 1
        
        for i in 1..<nums.count {
            if nums[i - 1] > nums[i] {
                counter += 1
            } else {
                answer = max(counter, answer)
                counter = 1
            }
        }
        
        answer = max(counter, answer)
        return answer
    }
}
