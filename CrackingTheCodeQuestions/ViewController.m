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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  [self stacks];
}

-(void) stacks {
  
  Stack *stack = [[Stack alloc] init];
  
  [stack push:[NSNumber numberWithInt:10]];
  [stack push:[NSNumber numberWithInt:3]];
  [stack push:[NSNumber numberWithInt:15]];
  [stack push:[NSNumber numberWithInt:-1]];
  
  //Question 3.2
  NSLog(@"%@", [stack min]);
  [stack pop];
  NSLog(@"%@", [stack min]);
  
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
