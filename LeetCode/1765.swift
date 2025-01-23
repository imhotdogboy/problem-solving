//
//  1765.swift
//  problem-solving
//
//  Created by hotdogboy on 1/23/25.
//

import Foundation

class Solution {
    func highestPeak(_ isWater: [[Int]]) -> [[Int]] {
        var map: [[Int]] = []
        var queue: [[Int]] = []
        var visited = Set<[Int]>()
        
        for i in 0..<isWater.count {
            map.append(Array(repeating: -1, count: isWater[0].count))
            
            for j in 0..<isWater[0].count {
                if isWater[i][j] == 1 {
                    map[i][j] = 0
                    queue.append([i, j])
                }
            }
        }
        
        while !queue.isEmpty {
            let node = queue.removeFirst()
            if visited.contains(node) { continue }
            var adjacents: [[Int]] = []
            
            if node[0] > 0 && map[node[0] - 1][node[1]] == -1 {
                map[node[0] - 1][node[1]] = map[node[0]][node[1]] + 1
                adjacents.append([node[0] - 1, node[1]])
            }
            if node[0] < map.count - 1 && map[node[0] + 1][node[1]] == -1 {
                map[node[0] + 1][node[1]] = map[node[0]][node[1]] + 1
                adjacents.append([node[0] + 1, node[1]])
            }
            if node[1] > 0 && map[node[0]][node[1] - 1] == -1 {
                map[node[0]][node[1] - 1] = map[node[0]][node[1]] + 1
                adjacents.append([node[0], node[1] - 1])
            }
            if node[1] < map[0].count - 1 && map[node[0]][node[1] + 1] == -1 {
                map[node[0]][node[1] + 1] = map[node[0]][node[1]] + 1
                adjacents.append([node[0], node[1] + 1])
            }
            
            visited.insert(node)
            queue += adjacents
        }
        
        return map
    }
}
