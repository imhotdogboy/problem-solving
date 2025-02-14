//
//  1352.swift
//  problem-solving
//
//  Created by hotdogboy on 2/14/25.
//

import Foundation

class ProductOfNumbers {
    var products: [Int] = [1]
    var distance = 0
    
    func add(_ num: Int) {
        if products.last! == 0 {
            distance = 1
            products.append(num)
        } else {
            distance += 1
            products.append(products.last! * num)
        }
    }
    
    func getProduct(_ k: Int) -> Int {
        guard k <= distance else { return 0 }
        let i = products.count - 1
        let divisor = products[i - k] == 0 ? 1 : products[i - k]
        return products[i] / divisor
    }
}

/**
 * Your ProductOfNumbers object will be instantiated and called as such:
 * let obj = ProductOfNumbers()
 * obj.add(num)
 * let ret_2: Int = obj.getProduct(k)
 */
