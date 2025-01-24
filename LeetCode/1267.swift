//
//  1267.swift
//  problem-solving
//
//  Created by hotdogboy on 1/24/25.
//

import Foundation

class Solution {
    func countServers(_ grid: [[Int]]) -> Int {
        var servers: [[Int]] = []
        var answer = 0
        
        for _ in 0..<grid.count {
            servers.append(Array(repeating: 0, count: grid[0].count))
        }
        
        for i in 0..<grid.count {
            var communicators: [[Int]] = []
            
            for j in 0..<grid[0].count {
                if grid[i][j] == 1 { communicators.append([i, j]) }
            }
            if communicators.count > 1 {
                for communicator in communicators {
                    servers[communicator[0]][communicator[1]] = 1
                }
            }
        }
        
        for i in 0..<grid[0].count {
            var communicators: [[Int]] = []
            
            for j in 0..<grid.count {
                if grid[j][i] == 1 { communicators.append([j, i]) }
            }
            if communicators.count > 1 {
                for communicator in communicators {
                    servers[communicator[0]][communicator[1]] = 1
                }
            }
        }
        
        for server in servers { answer += server.reduce(0, +) }
        return answer
    }
}
