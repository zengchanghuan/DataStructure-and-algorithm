//
//  BucketSort.m
//  bucketSort
//
//  Created by zengchanghuan on 2021/5/15.
//

#import "BucketSort.h"
#import "RadixNode.h"

@implementation BucketSort
- (NSMutableArray *)radixSortForBase:(NSInteger)base withArray:(NSMutableArray *)array
{
    int max = [[array valueForKeyPath:@"@max.intValue"] intValue];

//    int numberOfSteps = (log(max) / log(base)) / + 1;
    int numberOfSteps = (log(max) / log(base)) + 1;

    for (int i = 0; i < numberOfSteps; i++)
    {
        NSMutableArray *radixTable = [self makeRadixTableForArray:array forBase:base forDigit:i];
        [array setArray:[self makeArrayFromRadixTable:radixTable]];
    }
    return array;
}

- (NSMutableArray *)makeArrayFromRadixTable:(NSMutableArray *)radixTable
{
    NSMutableArray *theArray = [NSMutableArray array];
    for (RadixNode *bucketNode in radixTable)
    {
        RadixNode *bucket = bucketNode.next;
        while (bucket) {
            [theArray addObject:@(bucket.data)];
            bucket = bucket.next;
        }
    }
    return theArray;
}

- (NSMutableArray *)makeRadixTableForArray:(NSMutableArray *)theArray forBase:(NSInteger)base forDigit:(NSInteger)digit
{
    NSMutableArray *radixTable = [self getTableOfEmptyBucketsForSize:base];
    for (int i = 0; i < theArray.count; i++)
    {
        NSInteger value = [theArray[i] integerValue];
        NSInteger radixIndex = [self getExaminedNumber:value withBase:base atDigit:digit];
        RadixNode *current = (RadixNode *)radixTable[radixIndex];
        if (current.next)
        {
            while (current.next) {
                current = [current next];
            }
        }
        
        RadixNode *newEntry = [RadixNode new];
        newEntry.data = [theArray[i] intValue];
        current.next = newEntry;
    }
    return radixTable;
}


- (NSMutableArray *)getTableOfEmptyBucketsForSize:(NSInteger)size
{
    NSMutableArray *empty = [NSMutableArray new];
    
    for (NSInteger i = 0; i < size; i++) {
        [empty addObject:[RadixNode new]];
    }
    
    return empty;
}
- (NSInteger)getExaminedNumber:(NSInteger)number withBase:(NSInteger)base atDigit:(NSInteger)digit
{
    NSInteger divisor = (digit == 0) ? 1 : (pow(base, digit));
    return (number / divisor) % base;
}
@end
