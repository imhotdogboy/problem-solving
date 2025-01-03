//
//  689.swift
//  problem-solving
//
//  Created by hotdogboy on 1/3/25.
//

import Foundation

class Solution {
    func maxSumOfThreeSubarrays(_ nums: [Int], _ k: Int) -> [Int] {
        var window: [Int] = [nums[0..<k].reduce(0, +)]
        var left: [Int] = []
        var right: [Int] = []
        var answer = [0, 0, 0]
        
        for i in 1..<nums.count - k + 1 {
            window.append(window.last! - nums[i - 1] + nums[i + k - 1])
        }
        
        var maxLeftIndex = 0
        for i in 0..<window.count {
            if window[i] > window[maxLeftIndex] {
                maxLeftIndex = i
            }
            left.append(maxLeftIndex)
        }
        
        var maxRightIndex = window.count - 1
        for i in 1...window.count {
            if window[window.count - i] >= window[maxRightIndex] {
                maxRightIndex = window.count - i
            }
            right.append(maxRightIndex)
        }
        right.reverse()
        
        var maxSum = 0
        for i in k..<window.count - k {
            let maxLeft = window[left[i - k]]
            let maxRight = window[right[i + k]]
            if maxLeft + maxRight + window[i] > maxSum {
                maxSum = maxLeft + maxRight + window[i]
                answer = [left[i - k], i, right[i + k]]
            }
        }
        
        return answer
    }
}
