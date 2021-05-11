//
//  InsertionSort.m
//  InsertionSortForOC
//
//  Created by zengchanghuan on 2021/5/11.
//

#import "InsertionSort.h"

@implementation InsertionSort
- (NSArray *) mutableArrayInsertionSort: (NSArray *)unsortedArray
{
    NSMutableArray *returnArray = [unsortedArray mutableCopy];
    for (int i = 1; i < [unsortedArray count]; i++){
        for (int j = i; j > 0;j--)
        {
            int jMinus = [[returnArray objectAtIndex:(j-1)] intValue];
            int jFlat = [[returnArray objectAtIndex:j] intValue];
            if (jMinus > jFlat)
            {
                [returnArray replaceObjectAtIndex:j withObject:@(jMinus)];
                [returnArray replaceObjectAtIndex:j-1 withObject:@(jFlat)];
            }
        }
    }
    return  returnArray;
}
@end
