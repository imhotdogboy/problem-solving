//
//  2017.swift
//  problem-solving
//
//  Created by hotdogboy on 1/22/25.
//

import Foundation

class Solution {
    func gridGame(_ grid: [[Int]]) -> Int {
        var points: [(Int, Int)] = []
        let count = grid[0].count
        var answer = Int.max
        guard count != 1 else { return 0 }
        
        var sum = 0
        for point in grid[1] {
            sum += point
            points.append((0, sum))
        }
        
        sum = 0
        for i in 1...count {
            sum += grid[0][count - i]
            points[count - i].0 = sum
        }
        
        for i in 0..<count {
            if i == 0 {
                answer = min(answer, points[1].0)
            } else if i == count - 1 {
                answer = min(answer, points[count - 2].1)
            } else {
                let point = max(points[i + 1].0, points[i - 1].1)
                answer = min(answer, point)
            }
        }
        
        return answer
    }
}
