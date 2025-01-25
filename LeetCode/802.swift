//
//  802.swift
//  problem-solving
//
//  Created by hotdogboy on 1/25/25.
//

import Foundation

class Solution {
    func eventualSafeNodes(_ graph: [[Int]]) -> [Int] {
        let n = graph.count
        var state = Array(repeating: 0, count: n)
        var answer: [Int] = []
        
        for i in 0..<n { if DFS(node: i) { answer.append(i) } }
        return answer
        
        func DFS(node: Int) -> Bool {
            if state[node] > 0 {
                return state[node] == 2
            }
            
            state[node] = 1
            for neighbor in graph[node] {
                if state[neighbor] == 2 {
                    continue
                }
                if state[neighbor] == 1 || !DFS(node: neighbor) {
                    return false
                }
            }
            
            state[node] = 2
            return true
        }
    }
}
