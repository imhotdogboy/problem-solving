//
//  1894.swift
//  problem-solving
//
//  Created by hotdogboy on 9/2/24.
//

import Foundation

class Solution {
    func chalkReplacer(_ chalk: [Int], _ k: Int) -> Int {
        // Reduce loop by amount of chalk
        var counter = k % chalk.reduce(0, +)
        var student = 0
        
        while true {
            // Update the amount of chalk
            counter -= chalk[student]
            // If the counter less than 0, break loop
            guard counter >= 0 else { break }
            // Move to the next student
            student = (student + 1) % chalk.count
        }
        
        return student
    }
}
