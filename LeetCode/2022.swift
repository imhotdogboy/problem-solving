//
//  2022.swift
//  problem-solving
//
//  Created by hotdogboy on 9/1/24.
//

import Foundation

class Solution {
    func construct2DArray(_ original: [Int], _ m: Int, _ n: Int) -> [[Int]] {
        // Check number of elements matches size of 2D array
        guard original.count == m * n else { return [] }
        var answer: [[Int]] = []
        
        for i in 0..<m {
            var row: [Int] = []
            for j in 0..<n {
                // Append corresponding element from original to new
                row.append(original[i * n + j])
            }
            answer.append(row)
        }
        return answer
    }
}
