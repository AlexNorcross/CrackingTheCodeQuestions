//
//  Sorting.h
//  CrackingTheCodeQuestions
//
//  Created by Alexandra Norcross on 11/9/15.
//  Copyright © 2015 Alexandra Norcross. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sorting : NSObject

+(NSMutableArray *) quickSort: (NSMutableArray *) toSort indexLow: (NSInteger) indexLow indexHigh: (NSInteger) indexHigh;
+(NSMutableArray *) mergeSort: (NSMutableArray *) toSort;

@end
