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
  
  if (node1 == node2) return true;
  
  Queue *queue = [[Queue alloc] init];
  
  node1.visited = true;
  [queue enqueue: node1];
  
  while ([queue count] != 0) {
    
    GraphNode *node = [queue front];
    [queue dequeue];
    
    for (GraphNode *adjacent in node.adjacents) {
      if (adjacent.visited == false) {
        if (adjacent == node2) {
          return true;
        } else {
          adjacent.visited = true;
          [queue enqueue: adjacent];
        }
      }
    }
  }
  
  return false;
}

-(BOOL) routeExistsRecursiveFrom: (GraphNode *) node1 toNode: (GraphNode *) node2 {
  
  if (node1 == node2) {
    return true;
  }
  
  node1.visited = true;
  
  for (GraphNode *adjacent in node1.adjacents) {
    if (adjacent.visited == false) {
      if (adjacent == node2) {
        return true;
      } else {
        adjacent.visited = true;
        [self routeExistsRecursiveFrom:adjacent toNode:node2];
      }
    }
  }
  
  return false;
}

@end
