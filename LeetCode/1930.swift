//
//  1930.swift
//  problem-solving
//
//  Created by hotdogboy on 1/19/25.
//

import Foundation

class Solution {
    func countPalindromicSubsequence(_ s: String) -> Int {
        let s = Array(s)
        var indexes: [Character: (Int, Int)] = [:]
        var answer = Set<String>()
        
        for i in 0..<s.count {
            indexes[s[i], default: (i, i)].1 = i
        }
        
        for index in indexes {
            guard index.value.0 != index.value.1 else { continue }
            
            for i in index.value.0 + 1..<index.value.1 {
                answer.insert("\(s[index.value.0])\(s[i])\(s[index.value.1])")
            }
        }
        
        return answer.count
    }
}
