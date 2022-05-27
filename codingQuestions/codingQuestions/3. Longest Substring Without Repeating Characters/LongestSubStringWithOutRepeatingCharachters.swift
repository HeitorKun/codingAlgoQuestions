//
//  LongestSubStringWithOutRepeatingCharachters.swift
//  codingQuestions
//
//  Created by Heitor Feijó Kunrath on 26/05/22.
//
//

/*

 Given a string s, find the length of the longest substring without repeating characters.
 */
import Foundation

class LongestSubStringWithOutRepeatingCharachters {

    func lengthOfLongestSubstring(_ s: String) -> Int {


        guard s.count > 1 else { return s.count }

        var highestCount = 0
        var currentSubString: [Character] = []

        for char in s {
            if let index = currentSubString.firstIndex(of: char) {
                currentSubString.removeFirst(index+1)
            }
            currentSubString.append(char)
            highestCount = max(highestCount, currentSubString.count)
        }
        return highestCount
    }


    

}
fileprivate extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}

