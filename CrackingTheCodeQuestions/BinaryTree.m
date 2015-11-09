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
