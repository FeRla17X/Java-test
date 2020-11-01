import java.io.*;

public class LinkedList {
  Node head;

	static class Node {
    int data;
    Node next;

    Node(int d) {
      data = d;
      next = null;
    }
  }

  public static LinkedList insert(LinkedList list, int data){
    Node new_node = new Node(data);
    new_node.next = null;

    if (list.head == null) {
      list.head = new_node;
    }
    else {
      Node last = list.head;

      while (last.next != null)
          last = last.next;

      last.next = new_node;
    }

    return list;
  }

  void removeNode(int key){
      Node tmp = head;
      Node prev = null;

      // If head node itself holds the key to be deleted
      if (tmp != null && tmp.data == key){
          head = tmp.next;
          return;
      }


      while (tmp != null && tmp.data != key){
          prev = tmp;
          tmp = tmp.next;
      }

      if (tmp == null) return;

      prev.next = tmp.next;
  }

	public static void printList(LinkedList list){
    Node currNode = list.head;

    System.out.print(" List: ");

    while ( currNode != null ) {
      System.out.print(currNode.data + ", ");
      currNode = currNode.next;
    }

    System.out.println("\n");
	}

  public static void main(String[] args){
    LinkedList list = new LinkedList();
    int NodeQuant = 8;

    for ( int i = 1; i < NodeQuant + 1; i++ )
                      list = insert(list, i);


    printList(list);

    list.removeNode(3);

    printList(list);
  }
}
