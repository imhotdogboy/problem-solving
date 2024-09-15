//
//  1945.swift
//  problem-solving
//
//  Created by hotdogboy on 9/3/24.
//

import Foundation

class Solution {
    func getLucky(_ s: String, _ k: Int) -> Int {
        var numbers = ""
        var answer = 0
        
        // Convert each character to Int value
        for char in s {
            numbers += "\(Int(UnicodeScalar(String(char))!.value) - 96)"
        }
        
        for _ in 0..<k {
            answer = 0
            
            // Add the digits of number
            for number in numbers {
                answer += Int(String(number))!
            }
            
            // Update numbers to new sum
            numbers = String(answer)
        }
        
        return answer
    }
}
