//
//  BinaryTree.h
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/6/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinaryTreeNode.h"

@interface BinaryTree : NSObject

@property (strong,nonatomic) BinaryTreeNode *root;

-(instancetype) initWithRootValue: (NSNumber *) data;

-(BOOL) isBalanced;

@end
