//
//  BinarySearch.m
//  Binary Search
//
//  Created by Alp Eren Can on 25/08/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import "BinarySearch.h"

@interface BinarySearch ()

-(int)findIndexOfNumber:(int)number inSortedArray:(NSArray *)array withMin:(int)min andMax:(int)max;

@end

@implementation BinarySearch

-(int)findIndexOfNumber:(int)number inSortedArray:(NSArray *)array {
    
    return [self findIndexOfNumber:number inSortedArray:array withMin:0 andMax:(int)array.count - 1];
}

-(int)findIndexOfNumber:(int)number inSortedArray:(NSArray *)array withMin:(int)min andMax:(int)max {
    if (max < min) {
        return -1;
    } else {
        int mid = (min + max) / 2;
        
        if ([array[mid] intValue] > number) {
            return [self findIndexOfNumber:number inSortedArray:array withMin:min andMax:mid-1];
        } else if ([array[mid] intValue] < number) {
            return [self findIndexOfNumber:number inSortedArray:array withMin:mid+1 andMax:max];
        } else {
            return mid;
        }
    }
}

@end
