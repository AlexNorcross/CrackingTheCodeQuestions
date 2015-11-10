//
//  GraphNode.h
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/9/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GraphNode : NSObject

@property id data;
@property BOOL visited;
@property (strong,nonatomic) NSMutableArray *adjacents;

-(instancetype) initWithValue: (id) data;

-(GraphNode *) addAdjacentWithValue: (id) data;

@end
