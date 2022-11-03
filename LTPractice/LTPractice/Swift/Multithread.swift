//
//  Multithread.swift
//  LTPractice
//
//  Created by lt on 2022/11/2.
//

import Foundation

class Multithread: ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MultithreadTest3()
    }
    
    func MultithreadTest3() {
        // 2 3 1 4 不可行
        let group = DispatchGroup.init()
        let queue = DispatchQueue.init(label: "com.liting", attributes: .concurrent)
        queue.async(group: group) {
            Thread.sleep(forTimeInterval: 2)
            print(1)
        }
        group.enter()
        queue.async(group: group) {
            group.leave()
            Thread.sleep(forTimeInterval: 2)
            print(2)
        }
        group.enter()
        queue.async(group: group) {
            group.leave()
            Thread.sleep(forTimeInterval: 2)
            print(3)
        }
        group.notify(queue: DispatchQueue.main) {
            Thread.sleep(forTimeInterval: 2)
            print(4)
        }
    }
    
    func MultithreadTest2() {
        //1 2 4 3 不可行
        let seaQueue = DispatchQueue.init(label: "com.liting.1")
        let corQueue = DispatchQueue.init(label: "com.liting.2", attributes: .concurrent)
        seaQueue.async {
            Thread.sleep(forTimeInterval: 2)
            print(1)
        }
        seaQueue.async {
            corQueue.async {
                Thread.sleep(forTimeInterval: 2)
                print(2)
            }
            corQueue.async {
                Thread.sleep(forTimeInterval: 2)
                print(3)
            }
        }
        seaQueue.async {
            Thread.sleep(forTimeInterval: 2)
            print(4)
        }
    }
    
    func MultithreadTest1() {
        //不咋滴
        let queue = DispatchQueue.init(label: "com.liting", attributes: .concurrent)
        queue.async {
            Thread.sleep(forTimeInterval: 2)
            print(1)
        }
        queue.async(group: nil, qos: .default, flags: .barrier) {
            Thread.sleep(forTimeInterval: 2)
            print(2)
            print(3)
        }
        queue.async {
            Thread.sleep(forTimeInterval: 2)
            print(4)
        }
    }

    func MultithreadTest() {
        //可行👍
        let queue = OperationQueue.init()
        
        let op1: BlockOperation = BlockOperation.init {
            Thread.sleep(forTimeInterval: 2)
            print(1)
        }
        let op2: BlockOperation = BlockOperation.init {
            Thread.sleep(forTimeInterval: 2)
            print(2)
        }
        let op3: BlockOperation = BlockOperation.init {
            Thread.sleep(forTimeInterval: 2)
            print(3)
        }
        let op4: BlockOperation = BlockOperation.init {
            Thread.sleep(forTimeInterval: 2)
            print(4)
        }
        op2.addDependency(op1)
        op3.addDependency(op1)
        op4.addDependency(op2)
        op4.addDependency(op3)
        
        queue.addOperation(op1)
        queue.addOperation(op2)
        queue.addOperation(op3)
        queue.addOperation(op4)
    }
}
