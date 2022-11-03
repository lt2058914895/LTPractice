//
//  Algorithm.swift
//  LTPractice
//
//  Created by lt on 2022/10/28.
//

import Foundation


class Algorithm: ViewController {
    
    var nums: [Int]?
    
    let str = "cdabbacc"
    var array = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        test2()
    }
    
    func test2() {
        longPalindrome(str)
    }
    
    func test1() {
        nums = [3,30,34,5,9]
       let result = maxNum(nums) ?? ""
       print(result)
    }
}

extension Algorithm {
    func longPalindrome(_ str: String) {
        array = str.compactMap({String($0)})
        var result = (0, 0)

        for i in 0..<array.count - 1 {
            let p1 = palindrome(i, i)
            if p1.1 - p1.0 > result.1 - result.0 {
                result = p1
            }

            let p2 = palindrome(i, i + 1)
            if p2.1 - p2.0 > result.1 - result.0 {
                result = p2
            }
        }

        print(result.1 - result.0 + 1)
        
        let start = String.Index(utf16Offset: result.0, in: str)
        let end = String.Index(utf16Offset: result.1, in: str)
        let res = str[start ... end]
        print(res)
    }

    func palindrome(_ i: Int, _ j: Int) -> (Int, Int) {
        if array[i] != array[j] {
            return (i, i)
        }

        var tempI = i, tempJ = j
        while tempI >= 0, tempJ < array.count, array[tempI] == array[tempJ] {
            tempI -= 1
            tempJ += 1
        }

        return (tempI + 1, tempJ - 1)
    }
}

extension Algorithm {
    private func maxNum(_ nums: [Int]?) -> String? {
        guard let tempNums = nums else {
            return ""
        }
        var result = ""

        let newNums = tempNums.sorted { num1, num2 in
            return String(num1)+String(num2) > String(num2) + String(num1)
        }
        
        for num in newNums {
            result.append(String(num))
        }
        return result
    }
}
