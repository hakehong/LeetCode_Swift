//
//  Max Consecutive Ones.swift
//  LeetCode
//
//  Created by 洪清 on 2018/12/20.
//  Copyright © 2018 洪清. All rights reserved.
//

import Foundation

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var count = 0
        var arr = [Int]()
        for i in 0 ..< nums.count {
            if nums[i] == 1 {
                count  = count + 1
                if i == nums.count - 1 {
                    arr.append(count)
                }
            } else {
                arr.append(count)
                count = 0
            }
        }
        return arr.max() ?? 0
    }
}

/** 以下是大佬的 **/
class MaxConsecutiveOnes {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var globalMax = 0, localMax = 0
        
        for num in nums {
            if num == 1 {
                localMax += 1
                globalMax = max(globalMax, localMax)
            } else {
                localMax = 0
            }
        }
        
        return globalMax
    }
}

//总计
/**
 * 这道题我不应该在加入数组去处理
 */
