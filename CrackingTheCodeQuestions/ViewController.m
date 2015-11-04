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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  [self linkedLists];
}

-(void) linkedLists {
  
  //Question 2.1
  LinkedList *list = [[LinkedList alloc] initRootWithData: @"1"];

  NSLog(@"%@", @"original");
  [list addNodeWithData: @"5"];
  [list addNodeWithData: @"10"];
  [list addNodeWithData: @"1"];
  [list addNodeWithData: @"9"];
  [list addNodeWithData: @"1"];
  [list addNodeWithData: @"10"];
  [list printContents];
  
  NSLog(@"%@", @"duplicates removed");
  [list removeDuplicates];
  [list printContents];

}

-(void) strings {

  //MyStrings *strings = [[MyStrings alloc] init];
  
  //Question 1.1:
  //NSLog(@"%@", [strings stringHasUniqueCharacters:@"hello"] ? @"yes" : @"no");
  //NSLog(@"%@", [strings stringHasUniqueCharacters:@"bye"] ? @"yes" : @"no");
  
  //[strings reverse:@"hello!"];
  //[strings reverse:@"bye"];
}

@end
