//
//  3152.swift
//  problem-solving
//
//  Created by hotdogboy on 12/9/24.
//

import Foundation

class Solution {
    func isArraySpecial(_ nums: [Int], _ queries: [[Int]]) -> [Bool] {
        var dp: [Int: Int] = [:]
        var subarray = Set<Int>()
        var answer = [Bool]()
        
        // Process to determine special sequence
        for i in 0..<nums.count - 1 {
            if nums[i] % 2 != nums[i + 1] % 2 {
                subarray.insert(i)
                subarray.insert(i + 1)
            } else {
                for j in subarray {
                    if i != j { dp[j] = i }
                }
                subarray = []
            }
        }
        
        // Handle remaining indices at the end
        for j in subarray {
            if j != nums.count - 1 {
                dp[j] = nums.count - 1
            }
        }
        
        // Process each query to determine special
        for query in queries {
            if query[0] == query[1] {
                answer.append(true)
            } else if dp[query[0], default: -1] < query[1] {
                answer.append(false)
            } else {
                answer.append(true)
            }
        }
        
        return answer
    }
}
