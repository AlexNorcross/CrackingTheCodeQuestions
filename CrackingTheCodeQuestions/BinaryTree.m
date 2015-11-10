//
//  BinaryTree.m
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/6/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import "BinaryTree.h"
#import "BinaryTreeNode.h"

@interface BinaryTree()

@end

@implementation BinaryTree

-(instancetype) initWithRootValue: (NSNumber *) data {

  if (self == [super init]) {
    _root = [[BinaryTreeNode alloc] initWithValue: data];
  }
  return self;
}

-(instancetype) initBSTWithMinimalHeight: (NSArray *) values {
  
  if (self == [super init]) {
    [self addBSTNode: [values mutableCopy] toNode: _root];
  }
  return self;
}

-(BinaryTreeNode *) addBSTNode: (NSMutableArray *) values toNode: (BinaryTreeNode *) toNode {
  
  NSUInteger lengthOfValues = [values count];
  if (lengthOfValues == 0) {
    return nil;
  }
  
  //new node
  NSUInteger indexMid = lengthOfValues / 2;
  id newData = values[indexMid];
  BinaryTreeNode *new = [[BinaryTreeNode alloc] initWithValue:newData];
  
  if (_root == nil) {
    _root = new;

  } else {
    if ([newData integerValue] < [toNode.data integerValue]) {
      toNode.leftNode = new;
    } else if ([newData integerValue] > [toNode.data integerValue]) {
      toNode.rightNode = new;
    }
  }

  //children
  NSMutableArray *leftSide = [[NSMutableArray alloc] init];
  for (int i = 0; i < indexMid; i++) {
    [leftSide addObject:values[i]];
  }
  [self addBSTNode:leftSide toNode:new];
  
  NSMutableArray *rightSide = [[NSMutableArray alloc] init];
  for (int i = (int) indexMid + 1; i < lengthOfValues; i++) {
    [rightSide addObject:values[i]];
  }
  [self addBSTNode:rightSide toNode:new];
  
  return new;
}

-(BOOL) isBalanced {
  //= subtrees of any given node never differ by more than 1
  
  if (_root != nil) {
      
    NSUInteger heightLeft = 0;
    NSUInteger heightRight = 0;
    
    if (_root.leftNode != nil) {
      heightLeft = [_root.leftNode nodeSubtreeHeight];
    }
    
    if (_root.rightNode != nil) {
      heightRight = [_root.rightNode nodeSubtreeHeight];
    }
    
    if (ABS(heightLeft - heightRight) > 1) {
      return false;
    } else {
      return true;
    }

  } else {
    return true;
  }
}

@end
