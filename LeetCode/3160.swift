//
//  3160.swift
//  problem-solving
//
//  Created by hotdogboy on 2/7/25.
//

import Foundation

class Solution {
    func queryResults(_ limit: Int, _ queries: [[Int]]) -> [Int] {
        var balls: [Int: Int] = [:]
        var colors: [Int: Int] = [:]
        var answer: [Int] = []
        
        for query in queries {
            if let ball = balls[query[0]] {
                colors[ball, default: 1] -= 1
                if colors[ball]! == 0 {
                    colors[ball] = nil
                }
            }
            balls[query[0]] = query[1]
            colors[query[1], default: 0] += 1
            answer.append(colors.count)
        }
        
        return answer
    }
}
