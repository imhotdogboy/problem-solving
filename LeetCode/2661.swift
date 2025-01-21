//
//  2661.swift
//  problem-solving
//
//  Created by hotdogboy on 1/21/25.
//

import Foundation

class Solution {
    func firstCompleteIndex(_ arr: [Int], _ mat: [[Int]]) -> Int {
        var rows = Array(repeating: mat[0].count, count: mat.count)
        var cols = Array(repeating: mat.count, count: mat[0].count)
        var location: [Int: (Int, Int)] = [:]
        
        for i in 0..<mat.count {
            for j in 0..<mat[0].count {
                location[mat[i][j]] = (i, j)
            }
        }
        
        for i in 0..<arr.count {
            rows[location[arr[i]]!.0] -= 1
            cols[location[arr[i]]!.1] -= 1
            if rows[location[arr[i]]!.0] == 0 { return i }
            if cols[location[arr[i]]!.1] == 0 { return i }
        }
        
        return 0
    }
}
