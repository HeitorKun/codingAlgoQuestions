//
//  MedianOfSortedArrays.swift
//  codingQuestions
//
//  Created by Heitor Feijó Kunrath on 26/05/22.
//


/*

 Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.

 The overall run time complexity should be O(log (m+n)).

 */
import Foundation
class MedianOfSortedArrays {
        func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {

        var halfArray: [Int] = []

        let totalSize: Int = nums1.count+nums2.count
        let middleIndex: Int = Int(totalSize/2)

        var pointer1 = 0
        var pointer2 = 0

        var num1 = Int.max
        var num2 = Int.max

        while pointer1 + pointer2 <= middleIndex {

            if nums2.count - 1 < pointer2 {
                num2 = Int.max
            } else {
                num2 = nums2[pointer2]
            }

            if nums1.count - 1 < pointer1 {
                num1 = Int.max
            } else {
                num1 = nums1[pointer1]
            }

           if num1 >= num2  {
               halfArray.append(num2)
               pointer2 += 1
           } else {
               halfArray.append(num1)
               pointer1 += 1
           }

        }
        if totalSize%2 != 0 {
            return Double(halfArray.last ?? 0)
        } else {
            return Double( (halfArray.last!) + halfArray[halfArray.count - 2] ) / 2
        }

    }

}
