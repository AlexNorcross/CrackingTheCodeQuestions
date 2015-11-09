//
//  Sorting.m
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/9/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import "Sorting.h"

@implementation Sorting

+(NSMutableArray *) quickSort: (NSMutableArray *) toSort indexLow: (NSInteger) indexLow indexHigh: (NSInteger) indexHigh {
  
  if (indexLow < indexHigh) {
    NSInteger p = [self partition: toSort indexLow:indexLow indexHigh:indexHigh];
    [self quickSort:toSort indexLow:indexLow indexHigh:p];
    [self quickSort:toSort indexLow:p+1 indexHigh:indexHigh];
  }
  
  return toSort;
}

+(NSInteger) partition: (NSMutableArray *) toSort indexLow: (NSInteger) indexLow indexHigh: (NSInteger) indexHigh {
  
  NSInteger pivot = [toSort[indexLow] integerValue];
  NSInteger leftWall = indexLow;
  
  for (int i = (int) indexLow + 1; i <= indexHigh; i++) {
    NSInteger numberAtI = [toSort[i] integerValue];
    if (numberAtI < pivot) {
      leftWall++;
      [toSort exchangeObjectAtIndex:i withObjectAtIndex:leftWall];
    }
  }
  
  [toSort exchangeObjectAtIndex:indexLow withObjectAtIndex:leftWall];
  
  
  return leftWall;
}

+(NSMutableArray *) mergeSort: (NSMutableArray *) toSort {
  
  NSUInteger lengthToSort = [toSort count];
  if (lengthToSort <= 1) {
    return toSort;
  }
  
  NSUInteger midPoint = lengthToSort / 2;
  
  NSMutableArray *array1 = [[NSMutableArray alloc] init];
  NSMutableArray *array2 = [[NSMutableArray alloc] init];
  
  for (int i = 0; i < midPoint; i++) {
    [array1 addObject:toSort[i]];
  }
  
  for (int i = (int) midPoint; i < lengthToSort; i++) {
    [array2 addObject:toSort[i]];
  }
  
  array1 = [self mergeSort: array1];
  array2 = [self mergeSort: array2];

  return [self mergeArray:array1 withArray:array2];
}

+(NSMutableArray *) mergeArray: (NSMutableArray *) array1 withArray: (NSMutableArray *) array2 {
  
  NSMutableArray *toReturn = [[NSMutableArray alloc] init];
  
  while ([array1 count] > 0 && [array2 count] > 0) {

    NSInteger val1 = [array1[0] integerValue];
    NSInteger val2 = [array2[0] integerValue];
    
    if (val1 < val2) {
      [toReturn addObject:array1[0]];
      [array1 removeObjectAtIndex:0];
    } else if (val2 < val1) {
      [toReturn addObject:array2[0]];
      [array2 removeObjectAtIndex:0];
    } else {
      [toReturn addObject:array1[0]];
      [array1 removeObjectAtIndex:0];
      [array2 removeObjectAtIndex:0];
    }
  }
  
  while ([array1 count] > 0) {
    [toReturn addObject:array1[0]];
    [array1 removeObjectAtIndex:0];
  }
  
  while ([array2 count] > 0) {
    [toReturn addObject:array2[0]];
    [array2 removeObjectAtIndex:0];
  }
  
  return toReturn;
}

@end
