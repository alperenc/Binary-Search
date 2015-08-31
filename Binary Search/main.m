//
//  main.m
//  Binary Search
//
//  Created by Alp Eren Can on 25/08/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinarySearch.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BinarySearch *search = [[BinarySearch alloc] init];
        
        
        int number = 2;
        NSArray *array = @[@1, @2, @2, @2, @3, @5, @6];
        
        NSLog(@"%d", [search findIndexOfNumber:number inSortedArray:array]);
        
        [search firstIndexAndNumberOfOccurrencesOfNumber:2 inSortedArray:array];
        
        NSLog(@"Target number %d have %d occurrences in the array starting with index: %d.", number, search.numberOfOccurrences, search.firstIndex);
    }
    return 0;
}
