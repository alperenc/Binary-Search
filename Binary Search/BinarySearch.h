//
//  BinarySearch.h
//  Binary Search
//
//  Created by Alp Eren Can on 25/08/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinarySearch : NSObject

@property (nonatomic, assign) int firstIndex;
@property (nonatomic, assign) int numberOfOccurrences;

- (instancetype)init;

-(int)findIndexOfNumber:(int)number inSortedArray:(NSArray *)array;

-(void)firstIndexAndNumberOfOccurrencesOfNumber:(int)number inSortedArray:(NSArray *)array;

@end
