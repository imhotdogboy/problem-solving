//
//  3208.swift
//  problem-solving
//
//  Created by hotdogboy on 3/10/25.
//

import Foundation

class Solution {
    func numberOfAlternatingGroups(_ colors: [Int], _ k: Int) -> Int {
        let double = colors + colors
        var pointer = -1
        var answer = 0
        
        for i in 1..<k {
            if double[i - 1] == double[i] { pointer = i - 1 }
        }
        
        for i in 0..<colors.count {
            if pointer < 0 { answer += 1 }
            if double[k + i - 1] == double[k + i] { pointer = k - 1 }
            pointer -= 1
        }
        
        return answer
    }
}
