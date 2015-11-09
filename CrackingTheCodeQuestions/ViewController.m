//
//  ViewController.m
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/2/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import "ViewController.h"
#import "MyStrings.h"
#import "LinkedList.h"
#import "Stack.h"
#import "SetOfStacks.h"
#import "Queue.h"
#import "BinaryTree.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  [self trees];
}

-(void) trees {
  
  BinaryTree *tree = [[BinaryTree alloc] initWithRootValue:[NSNumber numberWithInt:10]];
  BinaryTreeNode *left = [tree.root addNodeWithValueLeft:[NSNumber numberWithInt:3]];
  BinaryTreeNode *right = [tree.root addNodeWithValueRight:[NSNumber numberWithInt:7]];
  
  BinaryTreeNode *left1 = [left addNodeWithValueLeft:[NSNumber numberWithInt:2]];
  BinaryTreeNode *right1 = [left addNodeWithValueRight:[NSNumber numberWithInt:4]];
//
  BinaryTreeNode *left2 = [right addNodeWithValueLeft:[NSNumber numberWithInt:6]];
  BinaryTreeNode *right2 = [right addNodeWithValueRight:[NSNumber numberWithInt:9]];
//
  BinaryTreeNode *left3 = [left1 addNodeWithValueLeft:[NSNumber numberWithInt:1]];
  BinaryTreeNode *right3 = [left1 addNodeWithValueRight:[NSNumber numberWithInt:3]];
  
  NSLog(@"%@", [tree isBalanced] ? @"Yes" : @"No");
}

-(void) queues {

  Queue *queue = [[Queue alloc] init];
  [queue enqueue:[NSNumber numberWithInt:10]];
  [queue enqueue:[NSNumber numberWithInt:9]];
  [queue enqueue:[NSNumber numberWithInt:8]];
  NSLog(@"%@", [queue front]);
  NSLog(@"count: %ld", [queue count]);
  [queue dequeue];
  NSLog(@"%@", [queue front]);
  NSLog(@"count: %ld", [queue count]);
}

-(void) stacks {
  
  //Stack *stack = [[Stack alloc] init];
  
  //[stack push:[NSNumber numberWithInt:10]];
  //[stack push:[NSNumber numberWithInt:3]];
  //[stack push:[NSNumber numberWithInt:15]];
  //[stack push:[NSNumber numberWithInt:-1]];
  
  //Question 3.2
  //NSLog(@"%@", [stack min]);
  //[stack pop];
  //NSLog(@"%@", [stack min]);
  
  //Question 3.3
  SetOfStacks *set = [[SetOfStacks alloc] initWithStackMaxSize:2];
  [set push:[NSNumber numberWithInt:10]];
  [set push:[NSNumber numberWithInt:3]];
  NSLog(@"%@", [set peek]);
  [set push:[NSNumber numberWithInt:15]];
  NSLog(@"%@", [set peek]);
  [set push:[NSNumber numberWithInt:-1]];
  [set push:[NSNumber numberWithInt:20]];
  [set pop];
  NSLog(@"%@", [set peek]);
  [set pop];
  NSLog(@"%@", [set peek]);
}

-(void) linkedLists {
  
  
  LinkedList *list = [[LinkedList alloc] initRootWithData: @"1"];
  [list addNodeWithData: @"2"];
  [list addNodeWithData: @"3"];
  //[list addNodeWithData: @"1"];
  //[list addNodeWithData: @"9"];
  //[list addNodeWithData: @"1"];
  //[list addNodeWithData: @"10"];

  //Question 2.1
  //NSLog(@"%@", @"original");
  //[list printContents];
  //NSLog(@"%@", @"duplicates removed");
  //[list removeDuplicates];
  //[list printContents];
  
  //Question 2.2
  [list getKthToLastElement:0];
  [list getKthToLastElement:1];
  [list getKthToLastElement:2];
  [list getKthToLastElement:3];
}

-(void) strings {

  //MyStrings *strings = [[MyStrings alloc] init];
  
  //Question 1.1
  //NSLog(@"%@", [strings stringHasUniqueCharacters:@"hello"] ? @"yes" : @"no");
  //NSLog(@"%@", [strings stringHasUniqueCharacters:@"bye"] ? @"yes" : @"no");
  
  //Question 1.2
  //[strings reverse:@"hello!"];
  //[strings reverse:@"bye"];
}

@end
