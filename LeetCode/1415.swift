//
//  1415.swift
//  problem-solving
//
//  Created by hotdogboy on 2/19/25.
//

import Foundation

class Solution {
    func getHappyString(_ n: Int, _ k: Int) -> String {
        var map: [String: [String]] = [:]
        var happy = Set<String>()
        
        map["a"] = ["b", "c"]
        map["b"] = ["c", "a"]
        map["c"] = ["a", "b"]
        
        backTracking("a")
        backTracking("b")
        backTracking("c")
        
        func backTracking(_ current: String) {
            if current.count == n {
                happy.insert(current)
                return
            }
            let last = String(current.last!)
            for next in map[last]! {
                backTracking(current + next)
            }
        }
        
        var answer = Array(happy)
        answer.sort()
        
        if k - 1 >= answer.count {
            return ""
        } else {
            return answer[k - 1]
        }
    }
}
