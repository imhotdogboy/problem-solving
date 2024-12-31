//
//  1014.swift
//  problem-solving
//
//  Created by hotdogboy on 12/31/24.
//

import Foundation

class Solution {
    func maxScoreSightseeingPair(_ values: [Int]) -> Int {
        var maxValue = values[0]
        var bestSight = 0
        
        for i in 1..<values.count {
            maxValue -= 1
            bestSight = max(maxValue + values[i], bestSight)
            maxValue = max(values[i], maxValue)
        }
        
        return bestSight
    }
}
