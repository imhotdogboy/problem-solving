//
//  769.swift
//  problem-solving
//
//  Created by hotdogboy on 12/19/24.
//

import Foundation

class Solution {
    func maxChunksToSorted(_ arr: [Int]) -> Int {
        var chunkCount = 0
        var maxElement = 0
        
        for i in 0..<arr.count {
            maxElement = max(arr[i], maxElement)
            
            // If maximum element is equal to index
            // All previous elements can form chunk
            if i == maxElement {
                // Increment the chunk count
                chunkCount += 1
                maxElement = 0
            }
        }
        
        return chunkCount
    }
}
