//
//  2981.swift
//  problem-solving
//
//  Created by hotdogboy on 12/10/24.
//

import Foundation

class Solution {
    func maximumLength(_ s: String) -> Int {
        var s = Array(s)
        var counter: [String: Int] = [:]
        
        for i in 0..<s.count {
            var buffer = String(s[i])
            counter[buffer, default: 0] += 1
            
            for j in i..<s.count - 1 {
                if s[j] == s[j + 1] {
                    // Extend substring as long as special
                    buffer += String(s[j + 1])
                    counter[buffer, default: 0] += 1
                } else {
                    // Stop extending when mismatch found
                    break
                }
            }
        }
        
        // Sort substrings by length in descending order
        let sorted = counter.sorted {
            $0.key.count > $1.key.count
        }
        
        for result in sorted {
            if result.value >= 3 {
                return result.key.count
            }
        }
        return -1
    }
}
