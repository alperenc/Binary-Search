//
//  BinarySearch.m
//  Binary Search
//
//  Created by Alp Eren Can on 25/08/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import "BinarySearch.h"

@implementation BinarySearch

-(int)indexOfNumber:(int)number inSortedArray:(NSArray *)array {
    int elementCount = (int)array.count;
    
    NSArray *newArray;
    
    if (number > [(NSNumber *)array[elementCount / 2] intValue]) {
        newArray = [array subarrayWithRange:NSMakeRange((NSUInteger)elementCount/2, (NSUInteger)elementCount/2)];
        return elementCount/2 + [self indexOfNumber:number inSortedArray:newArray];
    } else if (number < [(NSNumber *)array[elementCount / 2] intValue]) {
        newArray = [array subarrayWithRange:NSMakeRange(0, (NSUInteger)elementCount/2)];
        return [self indexOfNumber:number inSortedArray:newArray];
    } else {
        return elementCount / 2;
    }
}

@end
