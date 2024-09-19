//
//  874.swift
//  problem-solving
//
//  Created by hotdogboy on 9/4/24.
//

import Foundation

class Solution {
    func robotSim(_ commands: [Int], _ obstacles: [[Int]]) -> Int {
        // Initial position of robot
        var position = [0, 0]
        // Convert obstacles to set for fast lookup
        var obstacles = Set(obstacles)
        // Representing north, east, south and west
        var directions = [[0, 1], [1, 0], [0, -1], [-1, 0]]
        // Current direction index
        var current = 0
        // Maximum Euclidean distance
        var answer = 0
        
        // Iterate through each command
        for command in commands {
            switch command {
            case -1:
                // Turn right 90 degrees
                current = (current + 1) % 4
            case -2:
                // Turn left 90 degrees
                current = (current + 3) % 4
            default:
                // Move forward
                for _ in 0..<command {
                    var next = position
                    next[0] += directions[current][0]
                    next[1] += directions[current][1]
                    
                    // Check if the next position is obstacle
                    if obstacles.contains(next) {
                        break
                    } else {
                        position = next
                    }
                }
                
                // Update maximum Euclidean distance
                answer = max(answer, position[0] * position[0] + position[1] * position[1])
            }
        }
        
        return answer
    }
}
