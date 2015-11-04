//
//  ViewController.m
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/2/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import "ViewController.h"
#import "MyStrings.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  MyStrings *strings = [[MyStrings alloc] init];
//  NSLog(@"%@", [strings stringHasUniqueCharacters:@"hello"] ? @"yes" : @"no");
//  NSLog(@"%@", [strings stringHasUniqueCharacters:@"bye"] ? @"yes" : @"no");

  [strings reverse:@"hello!"];
  [strings reverse:@"bye"];
  
}

@end
