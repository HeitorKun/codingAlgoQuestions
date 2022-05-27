//
//  Two Sum.swift
//  codingQuestions
//
//  Created by Heitor Feijó Kunrath on 26/05/22.
//

import Foundation

/*
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 You can return the answer in any order.
 */

class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
            var dicNums: [Int: Int] = [:]

        for (index, number) in nums.enumerated() {
                let dif = target - number
                print(dif)
            if dicNums.keys.contains(where: { int in
                int == dif
            }) {
                    return [dicNums[dif]!, index]
                }

                dicNums[number] = index
            }
            return []
        }
}
