//
//  Queue.h
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/6/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Queue : NSObject

-(instancetype) init;

-(void) enqueue: (NSNumber *) data;
-(void) dequeue;

-(NSUInteger) count;
-(NSNumber *) front;

@end
