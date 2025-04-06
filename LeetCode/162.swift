//
//  162.swift
//  problem-solving
//
//  Created by hotdogboy on 4/6/25.
//

import Foundation

class Solution {
    func findPeakElement(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        var mid = (left + right) / 2
        
        while left < right {
            mid = (left + right) / 2
            if nums[mid + 1] > nums[mid] {
                left = mid + 1
            } else {
                right = mid
            }
        }
        
        return left
    }
}
