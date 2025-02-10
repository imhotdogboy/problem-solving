//
//  3174.swift
//  problem-solving
//
//  Created by hotdogboy on 2/10/25.
//

import Foundation

class Solution {
    func clearDigits(_ s: String) -> String {
        var s = Array(s)
        
        for i in 0..<s.count {
            if s[i].isNumber {
                for j in 1...i {
                    if !s[i - j].isNumber {
                        s[i - j] = Character("0")
                        break
                    }
                }
            }
        }
        
        return String(s.filter { !$0.isNumber })
    }
}
