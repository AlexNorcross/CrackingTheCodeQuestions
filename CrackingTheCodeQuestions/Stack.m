//
//  Stack.m
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/6/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import "Stack.h"

@interface Stack()

@property (strong,nonatomic) NSMutableArray *stackArray;
@property (strong,nonatomic) NSMutableArray *minValue;

@end

@implementation Stack

-(instancetype) init {

  self = [super init];
  
  if (self) {
    if (_stackArray == nil) {
      _stackArray = [[NSMutableArray alloc] init];
      _minValue = [[NSMutableArray alloc] init];
    }
  }
  
  return self;
}

-(void) push: (NSNumber *) data {
  
  if (_stackArray != nil) {
    
    //minimum value
    NSNumber * currentMinValue = [self peek];
    if (currentMinValue != nil) {
      
      if ([data doubleValue] < [currentMinValue doubleValue]) {
        [_minValue addObject: data];
      } else {
        [_minValue addObject: currentMinValue];
      }
      
    } else {
      [_minValue addObject: data];
    }
    
    //push
    [_stackArray addObject:data];
  }
}

-(void) pop {
  
  if ([self count] > 0) {
    
    //pop
    [_stackArray removeLastObject];
    
    //minimum value
    [_minValue removeLastObject];
  }
  
}

-(NSUInteger) count {
  
  if (_stackArray != nil) {
    return [_stackArray count];
  
  } else {
    return 0;
  }
}

-(NSNumber *) min {
  
  NSNumber *returnValue;
  
  NSUInteger count = [self count];
  if (count > 0) {
    returnValue = _minValue[count - 1];
  }
  
  return returnValue;
}

-(NSNumber *) peek {
  
  NSNumber *returnValue;
  
  NSUInteger count = [self count];
  if (count > 0) {
    returnValue = _stackArray[count - 1];
  }
  
  return returnValue;
}

@end
