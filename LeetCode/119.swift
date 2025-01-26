//
//  119.swift
//  problem-solving
//
//  Created by hotdogboy on 1/26/25.
//

import Foundation

class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        // Initialize first row of triangle
        var row = [1]
        
        for _ in 0..<rowIndex {
            // Start each row with 1
            var buffer = [1]
            // Compute intermediate values
            for i in 1..<row.count {
                buffer.append(row[i - 1] + row[i])
            }
            // End each row with 1
            buffer.append(1)
            row = buffer
        }
        return row
    }
}
