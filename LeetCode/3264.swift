//
//  3264.swift
//  problem-solving
//
//  Created by hotdogboy on 12/16/24.
//

import Foundation

class Solution {
    func getFinalState(_ nums: [Int], _ k: Int, _ multiplier: Int) -> [Int] {
        var nums = nums
        
        for _ in 0..<k {
            nums[nums.firstIndex(of: nums.min()!)!] *= multiplier
        }
        
        return nums
    }
}
