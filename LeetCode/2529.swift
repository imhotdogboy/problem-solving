//
//  2529.swift
//  problem-solving
//
//  Created by hotdogboy on 3/12/25.
//

import Foundation

class Solution {
    func maximumCount(_ nums: [Int]) -> Int {
        let count = nums.count
        
        var low = 0, high = count
        while low < high {
            let mid = (low + high) / 2
            if nums[mid] > 0 {
                high = mid
            } else {
                low = mid + 1
            }
        }
        let positive = count - low
        
        low = 0
        high = count
        while low < high {
            let mid = (low + high) / 2
            if nums[mid] >= 0 {
                high = mid
            } else {
                low = mid + 1
            }
        }
        let negative = low
        
        return max(positive, negative)
    }
}
