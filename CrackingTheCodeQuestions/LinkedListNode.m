//
//  LinkedListNode.m
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/4/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import "LinkedListNode.h"

@implementation LinkedListNode

-(instancetype) initWithData: (NSString *) data {

  if (self == [super init]) {
    _data = data;
  }
  
  return self;
}


@end
