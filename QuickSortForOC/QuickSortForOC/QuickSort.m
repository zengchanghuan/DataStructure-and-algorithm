//
//  QuickSort.m
//  QuickSortForOC
//
//  Created by zengchanghuan on 2021/5/11.
//

#import "QuickSort.h"

@implementation QuickSort
- (NSArray *)quickSortArray:(NSArray *)unsortedArray
{
    int count = (int)[unsortedArray count];
    if (count <= 1)
    {
        return unsortedArray;
    }
    
    int pivot = [[unsortedArray objectAtIndex:(count)/2] intValue];
    NSMutableArray *smallerThanArray = [NSMutableArray array];
    NSMutableArray *largerThanArray = [NSMutableArray array];
    NSMutableArray *pivotArray = [NSMutableArray array];
    [pivotArray addObject:@(pivot)];
    
    for (int e = 0; e < count; e++)
    {
        int num = [[unsortedArray objectAtIndex:e] intValue];
        if (num < pivot)
        {
            [smallerThanArray addObject:@(num)];
        }
        else if (num > pivot)
        {
            [largerThanArray addObject:@(num)];
        }
        else if (e != (count/2) && pivot == num)
        {
            [pivotArray addObject:@(num)];
        }
    }
    NSMutableArray *returnArray = [NSMutableArray array];
    [returnArray addObjectsFromArray:[self quickSortArray:smallerThanArray]];
    [returnArray addObjectsFromArray:pivotArray];
    [returnArray addObject:[self quickSortArray:largerThanArray]];
    return returnArray;
}
@end
