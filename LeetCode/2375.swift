//
//  2375.swift
//  problem-solving
//
//  Created by hotdogboy on 2/18/25.
//

import Foundation

class Solution {
    func smallestNumber(_ pattern: String) -> String {
        let pattern = Array(pattern)
        var answer: [String] = []
        for i in 1...9 { backTracking([i]) }
        
        func backTracking(_ current: [Int]) {
            guard current.count <= pattern.count else {
                answer.append(current.map { String($0) }.reduce("", +))
                return
            }
            let last = current.last!
            if pattern[current.count - 1] == "D" {
                guard last > 1 else { return }
                for i in 1..<last {
                    if current.contains(i) { continue }
                    backTracking(current + [i])
                }
            } else {
                guard last < 9 else { return }
                for i in last + 1...9 {
                    if current.contains(i) { continue }
                    backTracking(current + [i])
                }
            }
            return
        }
        
        answer.sort()
        return answer[0]
    }
}
