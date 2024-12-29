//
//  494.swift
//  problem-solving
//
//  Created by hotdogboy on 12/29/24.
//

import Foundation

class Solution {
    func findTargetSumWays(_ nums: [Int], _ target: Int) -> Int {
        var queue = Queue<Int>()
        queue.enqueue(nums[0])
        queue.enqueue(-1 * nums[0])
        var answer = 0
        
        for i in 1..<nums.count {
            let histories = queue.queue
            queue.queue = []
            
            for history in histories {
                queue.enqueue(history + nums[i])
                queue.enqueue(history - nums[i])
            }
        }
        
        let histories = queue.queue
        for history in histories {
            if history == target {
                answer += 1
            }
        }
        
        return answer
    }
}

struct Queue<T> {
    public var queue: [T] = []
    
    public var count: Int {
        return queue.count
    }
    
    public var isEmpty: Bool {
        return queue.isEmpty
    }
    
    public mutating func enqueue(_ element: T) {
        queue.append(element)
    }
    
    public mutating func dequeue() -> T? {
        return isEmpty ? nil : queue.removeFirst()
    }
}
