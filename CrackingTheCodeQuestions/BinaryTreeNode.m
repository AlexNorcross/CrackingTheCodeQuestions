//
//  BinaryTreeNode.m
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/6/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import "BinaryTreeNode.h"

@implementation BinaryTreeNode

-(instancetype) initWithValue: (NSNumber *) data {

  if (self == [super init]) {
    _data = data;
  }
  return self;
}

-(BinaryTreeNode *) addNodeWithValueLeft: (NSNumber *) data {
  
  _leftNode = [[BinaryTreeNode alloc] initWithValue: data];
  return _leftNode;
}

-(BinaryTreeNode *) addNodeWithValueRight: (NSNumber *) data {
  
  _rightNode = [[BinaryTreeNode alloc] initWithValue: data];
  return _rightNode;
}

-(NSInteger) nodeSubtreeHeight {
  
  //check subtrees
  if (_leftNode != nil || _rightNode != nil) {
    
    NSUInteger heightLeft = 0;
    NSUInteger heightRight = 0;
    
    if (_leftNode != nil) {
      heightLeft = [_leftNode nodeSubtreeHeight];
      heightLeft++;
    }
    
    if (_rightNode != nil) {
      heightRight = [_rightNode nodeSubtreeHeight];
      heightRight++;
    }
    
    if (heightLeft > heightRight) {
      return heightLeft;
    } else {
      return heightRight;
    }
  
    //no subtrees
  } else {
    return 0;
  }
}

@end
