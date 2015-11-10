//
//  GraphNode.m
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/9/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import "GraphNode.h"

@implementation GraphNode

-(instancetype) initWithValue: (id) data {
  if (self == [super init]) {
    _data = data;
    _visited = false;
    
    _adjacents = [[NSMutableArray alloc] init];
  }
  
  return self;
}

-(GraphNode *) addAdjacentWithValue: (id) data {
  
  GraphNode *new = [[GraphNode alloc] initWithValue:data];
  [_adjacents addObject: new];
  
  return new;
}

@end
