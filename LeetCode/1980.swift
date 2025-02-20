//
//  1980.swift
//  problem-solving
//
//  Created by hotdogboy on 2/20/25.
//

import Foundation

class Solution {
    func findDifferentBinaryString(_ nums: [String]) -> String {
        var answer = ""
        
        backTracking("0")
        backTracking("1")
        
        func backTracking(_ current: String) {
            guard answer == "" else { return }
            if current.count == nums.count {
                if nums.contains(current) {
                    return
                } else {
                    answer = current
                    return
                }
            }
            backTracking(current + "0")
            backTracking(current + "1")
        }
        
        return answer
    }
}
