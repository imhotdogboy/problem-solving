//
//  2028.swift
//  problem-solving
//
//  Created by hotdogboy on 9/5/24.
//

import Foundation

class Solution {
    func missingRolls(_ rolls: [Int], _ mean: Int, _ n: Int) -> [Int] {
        // Calculate total sum of all rolls
        var sum = mean * (rolls.count + n)
        // Subtract sum of existing rolls
        sum -= rolls.reduce(0, +)
        var answer: [Int] = []
        
        for i in 0..<n {
            // Value of current missing roll
            var value = sum / (n - i)
            // Value exceeds maximum possible roll, return empty array
            if value < 1 || value > 6 { return [] }
            answer.append(value)
            // Subtract value from total sum
            sum -= value
        }
        
        return answer
    }
}
