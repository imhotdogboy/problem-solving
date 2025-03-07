//
//  2523.swift
//  problem-solving
//
//  Created by hotdogboy on 3/7/25.
//

import Foundation

class Solution {
    func closestPrimes(_ left: Int, _ right: Int) -> [Int] {
        guard right > 1 else { return [-1, -1] }
        var answer = [-1, -1]
        
        var isPrime = Array(repeating: true, count: right + 1)
        isPrime[0] = false
        isPrime[1] = false
        
        for i in 2...Int(Double(right).squareRoot()) {
            if isPrime[i] {
                var prime = 2 * i
                while prime <= right {
                    isPrime[prime] = false
                    prime += i
                }
            }
        }
        
        var primes: [Int] = []
        for num in left...right {
            if isPrime[num] { primes.append(num) }
        }
        
        if primes.count < 2 {
            return answer
        } else {
            let count = primes.count
            var min = right - left
            for i in 1..<count {
                if primes[count - i] - primes[count - i - 1] <= min {
                    answer = [primes[count - i - 1], primes[count - i]]
                    min = primes[count - i] - primes[count - i - 1]
                }
            }
            return answer
        }
    }
}
