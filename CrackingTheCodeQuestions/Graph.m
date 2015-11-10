//
//  Graph.m
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/9/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import "Graph.h"
#import "Queue.h"

@implementation Graph

-(instancetype) initWithRootValue: (id) data {
  
  if (self == [super init]) {
    _root = [[GraphNode alloc] initWithValue: data];
  }
  return self;
}

-(BOOL) routeExistsFrom: (GraphNode *) node1 toNode: (GraphNode *) node2 {
  
  Queue *queue = [[Queue alloc] init];
  
  node1.visited = true;
  [queue enqueue: node1];
  
  while ([queue count] != 0) {
    
    GraphNode *node = [queue front];
    [queue dequeue];
    
    for (GraphNode *adjacent in node.adjacents) {
      if (adjacent.data == node2.data) {
        return true;
      } else {
        adjacent.visited = true;
        [queue enqueue: adjacent];
      }
    }
  }
  
  return false;
}

@end
