//
//  SetOfStacks.m
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/6/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import "SetOfStacks.h"
#import "Stack.h"

@interface SetOfStacks()

@property (nonatomic) NSInteger maxSize;
@property (strong,nonatomic) NSMutableArray *stacks;

@end

@implementation SetOfStacks

-(instancetype) initWithStackMaxSize: (NSInteger) maxSize {
  if (self == [super init]) {
    _maxSize = maxSize;
    _stacks = [[NSMutableArray alloc] init];
  }
  return self;
}

-(void) push: (NSNumber *) data {
  //push onto last object - if last stack is at max, create new stack
  
  Stack *stackToPushTo;
  
  if ([self numberOfStacks] > 0) {
    
    Stack *stackAtEnd = [_stacks lastObject];
    
    //last stack at max; new stack
    if ([stackAtEnd count] == _maxSize) {
      stackToPushTo = [[Stack alloc] init];
      [_stacks addObject:stackToPushTo];
    
    //use last stack
    } else {
      stackToPushTo = stackAtEnd;
    }
  
  //no stacks; new stack
  } else {
    stackToPushTo = [[Stack alloc] init];
    [_stacks addObject:stackToPushTo];
  }
  
  [stackToPushTo push: data];
}

-(void) pop {
  
  if ([self numberOfStacks] > 0) {
    
    Stack *stackAtEnd = [_stacks lastObject];
    
    //pop
    if ([stackAtEnd count] > 0) {
      [stackAtEnd pop];
    }
    
    if ([stackAtEnd count] == 0) {
      [_stacks removeLastObject];
    }
  }
}

-(NSNumber *) peek {
  
  NSNumber *returnValue;
  
  if ([self numberOfStacks] > 0) {
    Stack *stackAtEnd = [_stacks lastObject];
    returnValue = [stackAtEnd peek];
  }
   
  return returnValue;
}

-(NSInteger) numberOfStacks {
  
  if (_stacks != nil) {
    return [_stacks count];
  } else {
    return 0;
  }
}

@end
