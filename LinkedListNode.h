//
//  LinkedListNode.h
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/4/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinkedListNode : NSObject

@property (strong,nonatomic) NSString *data;
@property (strong,nonatomic) LinkedListNode *next;

-(instancetype) initWithData: (NSString *) data;

@end
