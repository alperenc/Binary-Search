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

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.firstIndex = -1;
        self.numberOfOccurrences = 0;
    }
    return self;
}

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

-(void)firstIndexAndNumberOfOccurrencesOfNumber:(int)number inSortedArray:(NSArray *)array {
    int index = [self findIndexOfNumber:number inSortedArray:array];
    if (index) {
        self.firstIndex = index;
        for (int i = index; i < array.count; i++) {
            if ([array[i] intValue] == number) {
                self.numberOfOccurrences++;
            } else {
                break;
            }
        }
        
        for (int i = index - 1; i > -1; i--) {
            if ([array[i] intValue] == number) {
                self.numberOfOccurrences++;
                self.firstIndex = i;
            } else {
                break;
            }
        }
    } else if (index == 0) {
        self.firstIndex = index;
        self.numberOfOccurrences++;
    }
}

@end
