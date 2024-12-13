//
//  2593.swift
//  problem-solving
//
//  Created by hotdogboy on 12/13/24.
//

import Foundation

class Solution {
    func findScore(_ nums: [Int]) -> Int {
        // Pair each element with index
        var nums = nums.enumerated().map { [$0.element, $0.offset] }
        var visited = Array(repeating: true, count: nums.count)
        nums.sort { $0[0] < $1[0] }
        var score = 0
        
        for num in nums {
            if visited[num[1]] {
                score += num[0]
                
                // Mark current index and neighbors
                visited[num[1]] = false
                if num[1] > 0 { visited[num[1] - 1] = false }
                if num[1] < nums.count - 1 {
                    visited[num[1] + 1] = false
                }
            }
        }
        
        return score
    }
}
