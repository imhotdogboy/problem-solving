//
//  2965.swift
//  problem-solving
//
//  Created by hotdogboy on 3/6/25.
//

import Foundation

class Solution {
    func findMissingAndRepeatedValues(_ grid: [[Int]]) -> [Int] {
        var nums: [Int: Int] = [:]
        var answer = [0, 0]
        
        for num in grid.joined() {
            nums[num, default: 0] += 1
        }
        for num in 1...grid.count * grid.count {
            if nums[num, default: 0] == 2 {
                answer[0] = num
            } else if nums[num, default: 0] == 0 {
                answer[1] = num
            }
        }
        
        return answer
    }
}
