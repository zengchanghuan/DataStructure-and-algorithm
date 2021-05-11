//
//  MergeSort.m
//  MergesortForOC
//
//  Created by zengchanghuan on 2021/5/11.
//

#import "MergeSort.h"

@implementation MergeSort
/*
- (NSArray *) mergeArray:(NSArray *)leftArray rightArray:(NSArray *)rightArray {
 
    NSMutableArray *returnArray = [NSMutableArray array];
    int i = 0, e = 0;
 
    while (i < [leftArray count] && e < [rightArray count]) {
        int leftValue = [[leftArray objectAtIndex:i] intValue];
        int rightValue = [[rightArray objectAtIndex:e] intValue];
        if (leftValue < rightValue) {
            [returnArray addObject: [leftArray objectAtIndex:i++]];
        } else {
            [returnArray addObject: [rightArray objectAtIndex:e++]];
        }
    }
 
    while (i < [leftArray count]) {
        [returnArray addObject: [leftArray objectAtIndex:i++]];
    }
 
    while (e < [rightArray count]) {
        [returnArray addObject: [rightArray objectAtIndex:e++]];
    }
 
    return returnArray;
}
*/

- (NSArray *) mergeArray:(NSArray *)leftArray rightArray:(NSArray *)rightArray
{
    NSMutableArray *returnArray = [NSMutableArray array];
    
    int i = 0,e = 0;
    while (i < [leftArray count] && e < [rightArray count]) {
        int leftValue = [[leftArray objectAtIndex:i] intValue];
        int rightValue = [[rightArray objectAtIndex:i] intValue];
        
        if (leftValue < rightValue)
        {
            [returnArray addObject:[leftArray objectAtIndex:i++]];
        }
        else
        {
            [returnArray addObject:[rightArray objectAtIndex:e++]];
        }
    }
    
    while (i < [leftArray count]) {
        [returnArray addObject:[leftArray objectAtIndex:i++]];
    }
    while (e < [rightArray count]) {
        [returnArray addObject:[rightArray objectAtIndex:e++]];
    }
    return returnArray;
}

- (NSArray *) mergeSortArray:(NSArray *)unsortedArray
{
    int count = (int)[unsortedArray count];
    if (count < 2) {
        return unsortedArray;
    }
    int middle = count / 2;
    NSArray *leftArray = [unsortedArray subarrayWithRange: NSMakeRange(0, middle)];
    NSArray *rightArray = [unsortedArray subarrayWithRange: NSMakeRange(middle, (count - middle))];
 
    NSArray *returnArray = [self mergeArray: [self mergeSortArray: leftArray] rightArray: [self mergeSortArray: rightArray]];

    return returnArray;
}
@end
