//
//  1079.swift
//  problem-solving
//
//  Created by hotdogboy on 2/17/25.
//

import Foundation

class Solution {
    func numTilePossibilities(_ tiles: String) -> Int {
        let tiles = Array(tiles).map { String($0) }
        var visited = Array(repeating: false, count: tiles.count)
        var answer = Set<String>()
        
        func permutation(_ current: String) {
            answer.insert(current)
            if current.count == tiles.count { return }
            
            for i in 0..<tiles.count {
                if visited[i] {
                    continue
                } else {
                    visited[i] = true
                    permutation(current + tiles[i])
                    visited[i] = false
                }
            }
        }
        
        permutation("")
        return answer.count - 1
    }
}
