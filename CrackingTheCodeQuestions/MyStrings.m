//
//  MyStrings.m
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/2/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import "MyStrings.h"

@implementation MyStrings

-(BOOL) stringHasUniqueCharacters: (NSString *) string {
  //assume ascii
  
  NSUInteger lengthOfString = [string length];
  
  if (lengthOfString > 128) {
    return false;
  }
  
  NSMutableArray *characters = [[NSMutableArray alloc] init];
  for (int i = 0; i < 128; i++) {
    [characters addObject:[[NSNumber alloc] initWithInt:0]];
  }
  
  for (int i = 0; i < lengthOfString; i++) {
    
    NSInteger characterAsciiVal = [string characterAtIndex:i];
    
    if ([characters[characterAsciiVal] integerValue] == 1) {
      return false;
    } else {
      [characters replaceObjectAtIndex:characterAsciiVal withObject:[[NSNumber alloc] initWithInt: 1]];
    }
  }
  
  return true;
}

@end
