//
//  2651.swift
//  problem-solving
//
//  Created by hotdogboy on 3/15/25.
//

import Foundation

class Solution {
    func findDelayedArrivalTime(_ arrivalTime: Int, _ delayedTime: Int) -> Int {
        return (arrivalTime + delayedTime) % 24
    }
}
