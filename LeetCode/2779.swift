//
//  2779.swift
//  problem-solving
//
//  Created by hotdogboy on 12/11/24.
//

import Foundation

class Solution {
    func maximumBeauty(_ nums: [Int], _ k: Int) -> Int {
        var sweep: [Double: Int] = [:]
        let k = Double(k)
        var answer = 0
        var buffer = 0
        
        // Mark range for each num
        for num in nums {
            sweep[Double(num) - (k + 0.5), default: 0] += 1
            sweep[Double(num) + (k + 0.5), default: 0] -= 1
        }
        
        let sorted = sweep.sorted {
            $0.key < $1.key
        }
        
        // Calculate maximum overlap using sweep line
        for current in sorted {
            buffer += current.value
            answer = max(buffer, answer)
        }
        return answer
    }
}
