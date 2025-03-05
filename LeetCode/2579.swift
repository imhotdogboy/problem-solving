//
//  2579.swift
//  problem-solving
//
//  Created by hotdogboy on 3/5/25.
//

import Foundation

class Solution {
    func coloredCells(_ n: Int) -> Int {
        var answer = 0
        for i in 0..<n {
            if i == n - 1 {
                answer += 2 * i + 1
            } else {
                answer += 4 * i + 2
            }
        }
        return answer
    }
}
