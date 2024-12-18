//
//  1475.swift
//  problem-solving
//
//  Created by hotdogboy on 12/18/24.
//

import Foundation

class Solution {
    func finalPrices(_ prices: [Int]) -> [Int] {
        var answer: [Int] = []
        
        for i in 0..<prices.count {
            var discount = 0
            
            for j in i + 1..<prices.count {
                if prices[i] >= prices[j] {
                    discount = prices[j]
                    break
                }
            }
            answer.append(prices[i] - discount)
        }
        
        return answer
    }
}
