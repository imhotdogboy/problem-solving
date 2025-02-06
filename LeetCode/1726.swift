//
//  1726.swift
//  problem-solving
//
//  Created by hotdogboy on 2/6/25.
//

import Foundation

class Solution {
    func tupleSameProduct(_ nums: [Int]) -> Int {
        var products: [Int: Int] = [:]
        var answer = 0
        
        for i in 0..<nums.count - 1 {
            for j in i + 1..<nums.count {
                let product = nums[i] * nums[j]
                products[product, default: 0] += 1
            }
        }
        
        for (_, count) in products {
            if count > 1 {
                answer += (count * (count - 1) / 2) * 8
            }
        }
        
        return answer
    }
}
