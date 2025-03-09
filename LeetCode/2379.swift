//
//  2379.swift
//  problem-solving
//
//  Created by hotdogboy on 3/9/25.
//

import Foundation

class Solution {
    func minimumRecolors(_ blocks: String, _ k: Int) -> Int {
        var blocks = Array(blocks)
        var colored = 0
        var answer = 0
        
        for i in 0..<k {
            if blocks[i] == "W" { colored += 1 }
            answer = colored
        }
        
        for i in k..<blocks.count {
            if blocks[i - k] == "W" { colored -= 1 }
            if blocks[i] == "W" { colored += 1 }
            answer = min(colored, answer)
        }
        
        return answer
    }
}
