//
//  2342.swift
//  problem-solving
//
//  Created by hotdogboy on 2/12/25.
//

import Foundation

class Solution {
    func maximumSum(_ nums: [Int]) -> Int {
        var sums: [Int: [Int]] = [:]
        var answer = -1
        
        for num in nums {
            let sum = Array(String(num)).map { Int(String($0))! }.reduce(0, +)
            sums[sum, default: []].append(num)
        }
        
        for sum in sums {
            guard sum.value.count > 1 else { continue }
            let sorted = sum.value.sorted(by: >)
            answer = max(sorted[0] + sorted[1], answer)
        }
        
        return answer
    }
}
