//
//  Graph.h
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/9/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GraphNode.h"

@interface Graph : NSObject

@property (strong,nonatomic) GraphNode *root;

-(instancetype) initWithRootValue: (id) data;

-(BOOL) routeExistsFrom: (GraphNode *) node1 toNode: (GraphNode *) node2;

@end
