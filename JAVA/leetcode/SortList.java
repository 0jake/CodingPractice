package leetcode;

import java.util.List;

public class SortList {

  public static void main(String[] args) {

  }

  static ListNode sortlist(ListNode head) {
    if (head==null || head.next==null)
      return head;

    ListNode mid = head;
    ListNode step2 = head.next;
    while (mid != null && step2 != null) {
      mid = mid.next;
      step2 = step2.next.next;
    }

    ListNode left = sortlist(mid.next);
    mid.next = null; //
    ListNode right = sortlist(head);

    return merge(left, right);
  }

  static ListNode merge(ListNode left, ListNode right) {
    if (left == null)
      return right;
    else if (right == null)
      return left;

    ListNode tmp = null;
    if (left.val < right.val) {
      tmp = left;
      left = left.next;
    } else {
      tmp = right;
      right = right.next;
    }
      tmp = tmp.next;

    while (left != null && right != null) {
      if (left.val < right.val) {
        tmp.next = left;
        left = left.next;
      } else {
        tmp.next = right;
        right = right.next;
      }
      tmp = tmp.next;
    }
    if (left!=null)
      tmp.next = left;
    if (right!=null)
      tmp.next = right;

    return tmp;
  }
}

/**
 * Definition for singly-linked list.
 */
class ListNode {
  int val;
  ListNode next;

  public ListNode(int x) {
    val = x;
    next = null;
  }
}

//链接：https://www.nowcoder.com/questionTerminal/d75c232a0405427098a8d1627930bea6
//        来源：牛客网
/*
  考点：
  1. 快慢指针；2. 归并排序。
  此题经典，需要消化吸收。
  复杂度分析:
             T(n)            拆分 n/2, 归并 n/2 ，一共是n/2 + n/2 = n
            /    \           以下依此类推：
          T(n/2) T(n/2)      一共是 n/2*2 = n
         /    \  /     \
        T(n/4) ...........   一共是 n/4*4 = n
 
       一共有logn层，故复杂度是 O(nlogn)
 */
