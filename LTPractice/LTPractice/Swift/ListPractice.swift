//
//  ListPractice.swift
//  LTPractice
//
//  Created by lt on 2022/10/28.
//

import Foundation

/*
为了方便以后使用该链表，可以添加如下几种方法：

appendToHead: 从头部添加数据
appendToLast: 从尾部添加数据
getNode:获取某个节点的数据
removeNode：删除某个节点
reverse:反转链表
*/

public class LinkNode<T> {
    var value: T
    var next: LinkNode?
    init(_ value: T, _ next: LinkNode? = nil) {
        self.value = value
        self.next = next
    }
}

extension LinkNode: CustomStringConvertible {
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next)
    }
}

public class LinkList<T> {
    var head: LinkNode<T>?
    var length: NSInteger = 0
    
    init() {}
}

extension LinkList: CustomStringConvertible {
    public var description: String {
        guard let head = head else {
            return "null"
        }
        return String(describing: head)
    }
}

extension LinkList {
    
    func appendToHead(_ value: T) {
        let node = LinkNode(value, head)
        head = node
        length += 1
    }
    
    func appendToLast(_ value: T) {
        let node = LinkNode(value, nil)
        let last = getNode(at: length - 1)
        if last == nil {
            head = node
        } else {
            last?.next = node
        }
        length += 1
    }
    
    func getNode(at: NSInteger) -> LinkNode<T>? {
        if head == nil || length == 0 || at < 0 || at >= length {
            return nil
        }
        var index: NSInteger = 0
        var cur = head
        while cur != nil {
            if at == index {
                return cur
            }
            cur = cur?.next
            index += 1
        }
        return nil
    }
    
    func removeNode(at: NSInteger) {
        if head == nil || length == 0 || at < 0 || at >= length {
            return
        }
        if at == 0 {
            let mid = head?.next
            head = mid
            length -= 1
        } else {
            var index: NSInteger = 1
            var cur = head
            while cur?.next != nil {
                if at == index {
                    let mid = cur?.next?.next
                    cur?.next = mid
                    length -= 1
                }
                cur = cur?.next
                index += 1
            }
        }
    }
    
    func reverse() {
        if head == nil || head?.next == nil {
            return
        }
        let begin = head
        var end  = head?.next
        while end != nil {
            begin?.next = end?.next
            end?.next = head
            head = end
            end = begin?.next
        }
    }
    
}

class ListPractice: ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let list = LinkList<Int>()
        list.appendToLast(1)
        list.appendToLast(2)
        list.appendToLast(3)
        list.appendToLast(4)
        list.appendToLast(5)
        print("原始链表：\(list)")
        list.reverse()
        print("反转后的链表：\(list)")
    }
}
