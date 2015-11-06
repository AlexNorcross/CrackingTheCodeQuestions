//
//  LinkedList.h
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/4/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedListNode.h"

@interface LinkedList : NSObject

@property (strong,nonatomic) LinkedListNode *root;

-(instancetype) initRootWithData: (NSString *) data;
-(void) addNodeWithData: (NSString *) data;

-(void) removeDuplicates;
-(void) getKthToLastElement: (NSInteger) k;

-(void) printContents;

@end
