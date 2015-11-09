//
//  BinaryTreeNode.h
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/6/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinaryTreeNode : NSObject

@property (strong,nonatomic) NSNumber *data;
@property (strong,nonatomic) BinaryTreeNode *leftNode;
@property (strong,nonatomic) BinaryTreeNode *rightNode;

-(instancetype) initWithValue: (NSNumber *) data;

-(BinaryTreeNode *) addNodeWithValueLeft: (NSNumber *) data;
-(BinaryTreeNode *) addNodeWithValueRight: (NSNumber *) data;

-(NSInteger) nodeSubtreeHeight;

@end
