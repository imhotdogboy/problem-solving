//
//  1790.swift
//  problem-solving
//
//  Created by hotdogboy on 2/5/25.
//

import Foundation

class Solution {
    func areAlmostEqual(_ s1: String, _ s2: String) -> Bool {
        let s1 = Array(s1)
        let s2 = Array(s2)
        var index: [Int] = []
        
        for i in 0..<s1.count {
            if s1[i] != s2[i] {
                index.append(i)
            }
        }
        
        if index.count == 0 {
            return true
        } else if index.count == 2 {
            if s1[index[0]] == s2[index[1]] && s1[index[1]] == s2[index[0]] {
                return true
            }
        }
        return false
    }
}
