import UIKit

//extension String {
//    func indicesOf(string: String) -> [Int] {
//        var indices = [Int]()
//        var searchStartIndex = self.startIndex
//
//        while searchStartIndex < self.endIndex,
//            let range = self.range(of: string, range: searchStartIndex..<self.endIndex),
//            !range.isEmpty
//        {
//            let index = distance(from: self.startIndex, to: range.lowerBound)
//            indices.append(index)
//            searchStartIndex = range.upperBound
//        }
//
//        return indices
//    }
//}
//
//class Solution {
//
//    var str:String = ""
//    func findSubstring(_ s: String, _ words: [String]) -> [Int] {
//        for <#item#> in <#items#> {
//            <#code#>
//        }
//        let str = words.joined()
//        let indicies = s.indicesOf(string: str)
//        return indicies
//    }
//}
//
//let sss = "wordgoodgoodgoodbestword"
//let words = ["go","od"]
//
//let s  = Solution()
//print(s.findSubstring(sss, words))

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

let s = Solution();
var nums = [1,1,0,0,1]
print(s.findMaxConsecutiveOnes(nums))


