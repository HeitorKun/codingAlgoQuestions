//
//  AddTwoNumbers.swift
//  codingQuestions
//
//  Created by Heitor Feijó Kunrath on 26/05/22.
//

import Foundation
/*
 Add Two Numbers
 You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

 You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 */

 fileprivate class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }


class AddTwoNumbers {
    fileprivate func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
            var nodo1: ListNode? = l1
            var nodo2: ListNode? = l2
            let head: ListNode = ListNode()
            var atual: ListNode? = head
            var carry: Int = 0

            while nodo1 != nil ||  nodo2 != nil || carry != 0 {


                atual?.val = (nodo1?.val ?? 0) + (nodo2?.val ?? 0) + carry
                if atual!.val > 9 {
                    carry = 1
                    atual!.val -= 10
                } else {
                    carry = 0
                }


                nodo1 = nodo1?.next
                nodo2 = nodo2?.next

                if (nodo1?.val == nil ) && (nodo2?.val == nil ) && carry == 0 {
                    break }
                let auxNode = ListNode()
                atual!.next = auxNode
                atual = auxNode

            }



            return head
        }

}
