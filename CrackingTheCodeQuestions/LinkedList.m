//
//  LinkedList.m
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/4/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList

-(instancetype) initRootWithData: (NSString *) data {
  
  if (self == [super init]) {
    if (_root == nil) {
      _root = [[LinkedListNode alloc] initWithData: data];
    } else {
      _root.data = data;
    }
  }
  
  return self;
}

-(void) addNodeWithData: (NSString *) data {
  
  //add node to end
  if (_root != nil) {
    
    LinkedListNode *start = _root;
    while (start.next != nil) {
      start = start.next;
    }
    
    start.next = [[LinkedListNode alloc] initWithData: data];
    
  
  //root does not exist
  } else {
    [self initRootWithData: data];
  }
}

-(void) removeDuplicates {
  //unsorted linked list
  
  LinkedListNode *node = _root;
  while (node != nil) {
    
    //run thru next nodes
    LinkedListNode *nodeCheckParent = node;
    LinkedListNode *nodeCheck = node.next;

    while (nodeCheck != nil) {
      
      if (nodeCheck.data == node.data) {
        nodeCheckParent.next = nodeCheck.next;
        nodeCheck = nodeCheckParent.next;
      } else {
        nodeCheckParent = nodeCheck;
        nodeCheck = nodeCheck.next;
      }
      
    }
    
    node = node.next;
  }
}

-(void) getKthToLastElement: (NSInteger) k {
  //where count is not tracked
  
  if (_root != nil) {
    [self gotoNextNode: _root k: k];

  //root does not exist
  } else {
    NSLog(@"list does not exist");
  }
}

-(NSInteger) gotoNextNode: (LinkedListNode *) node k: (NSInteger) k {
  
  NSInteger tracker;
  
  if (node.next != nil) {
    tracker = [self gotoNextNode: node.next k: k];
    tracker++;
  } else {
    tracker = 0;
  }
  
  if (tracker == k) {
    NSLog(@"%ld from last element is %@", (long)k, node.data);
  }
  
  return tracker;
}

-(void) printContents {
  
  LinkedListNode *node = _root;
  
  while (node != nil) {
    NSLog(@"%@", node.data);
    node = node.next;
  }
}
@end
