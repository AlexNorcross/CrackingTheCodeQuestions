//
//  Stack.h
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/6/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject

-(instancetype) init;

-(void) push: (NSNumber *) data;
-(void) pop;

-(NSNumber *) min;
-(NSNumber *) peek;

@end
