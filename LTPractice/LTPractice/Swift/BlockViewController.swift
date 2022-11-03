//
//  BlockViewController.swift
//  LTPractice
//
//  Created by lt on 2022/10/15.
//

import Foundation

class BlockViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapTest1()
    }
   
    private func mapTest1() {
        let numbers = [[1, 2, 3, nil], [4, 5, 6], [7]]
        let maped = numbers.map { $0 }
        let flatMapped = numbers.flatMap { $0 }
        let compactMapped = numbers.compactMap { $0 }
        print(maped)
        print(flatMapped)
        print(compactMapped)
    }
    
    private func mapTest() {
        let numbers = [1, 2, 3, nil, 4, 5, 6, 7]
        let maped = numbers.map { $0 }
        let flatMapped = numbers.flatMap { $0 }
        let compactMapped = numbers.compactMap { $0 }
        print(maped)
        print(flatMapped)
        print(compactMapped)
    }
    
    private func blockTest1() {
        var num: Int = 10
        let block: () -> () = {
            print(num)
        }
        num = 20
        block()
    }
    
    private func structTest1() {
        var arr1 = [1,2,3,4,5]
        var arr2 = arr1
        print(String.init(format: "arr1:%p", arr1))
        print(String.init(format: "arr2:%p", arr2))
    }
    
    private func structTest() {
        let num1 = 10
        let num2 = num1
        print(String.init(format: "num1:%p", num1))
        print(String.init(format: "num2:%p", num2))
         
        let str1 = "abc"
        let str2 = str1
        print(String.init(format: "str1:%p", str1))
        print(String.init(format: "str2:%p", str2))
    }
    
}
