//
//  1769.swift
//  problem-solving
//
//  Created by hotdogboy on 1/20/25.
//

import Foundation

class Solution {
    func minOperations(_ boxes: String) -> [Int] {
        let boxes = Array(boxes)
        var answer = Array(repeating: 0, count: boxes.count)
        
        for i in 0..<boxes.count {
            if boxes[i] == "1" {
                for j in 0..<boxes.count {
                    guard i != j else { continue }
                    answer[j] += abs(i - j)
                }
            }
        }
        
        return answer
    }
}
