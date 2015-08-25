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
        
        NSLog(@"%d", [search indexOfNumber:2 inSortedArray:@[@1, @2, @2, @3, @4, @5, @6]]);
    }
    return 0;
}
