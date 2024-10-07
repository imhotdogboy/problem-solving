//
//  1684.swift
//  problem-solving
//
//  Created by hotdogboy on 9/12/24.
//

import Foundation

class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        // Array of allowed characters
        var allowed = Array(allowed).map { String($0) }
        // Array of entire alphabet
        var alphabet = Array("abcdefghijklmnopqrstuvwxyz").map { String($0) }
        var answer: Set<Int> = []
        
        for i in 0..<26 {
            for j in 0..<words.count {
                // If current alphabet in allowed array
                guard !allowed.contains(alphabet[i]) else { continue }
                // If current alphabet is not allowed
                if Array(words[j]).contains(alphabet[i]) {
                    answer.insert(j)
                }
            }
        }
        
        return words.count - answer.count
    }
}
