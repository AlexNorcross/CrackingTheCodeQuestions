//
//  SetOfStacks.h
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/6/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SetOfStacks : NSObject

-(instancetype) initWithStackMaxSize: (NSInteger) maxSize;

-(void) push: (NSNumber *) data;
-(void) pop;

-(NSNumber *) peek;

@end
