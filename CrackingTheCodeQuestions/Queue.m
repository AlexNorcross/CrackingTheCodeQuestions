//
//  Queue.m
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/6/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import "Queue.h"

@interface Queue()

@property (strong,nonatomic) NSMutableArray *queueArray;

@end

@implementation Queue

-(instancetype) init {
  if (self == [super init]) {
    _queueArray = [[NSMutableArray alloc] init];
  }
  return self;
}

-(void) enqueue: (id) data {
  
  if (_queueArray != nil) {
    [_queueArray addObject:data];
  }
}

-(void) dequeue {
  
  if ([self count] > 0) {
    [_queueArray removeObjectAtIndex:0];
  } 
  
}

-(NSUInteger) count {

  if (_queueArray != nil) {
    return [_queueArray count];
  } else {
    return 0;
  }
}

-(id) front {
  
  id returnValue;
  
  if ([self count] > 0) {
    returnValue = _queueArray[0];
  }
  
  return returnValue;
}

@end
