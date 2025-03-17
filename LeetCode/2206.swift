//
//  2206.swift
//  problem-solving
//
//  Created by hotdogboy on 3/17/25.
//

import Foundation

class Solution {
    func divideArray(_ nums: [Int]) -> Bool {
        var counter: [Int: Int] = [:]
        
        for num in nums {
            counter[num, default: 0] += 1
        }
        
        for (_, count) in counter {
            if count % 2 != 0 { return false }
        }
        return true
    }
}
