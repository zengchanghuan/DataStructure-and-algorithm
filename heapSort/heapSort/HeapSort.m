//
//  HeapSort.m
//  heapSort
//
//  Created by zengchanghuan on 2021/5/11.
//

#import "HeapSort.h"

@implementation HeapSort

#pragma mark - 大顶堆
- (NSMutableArray *)maxHeapSort:(NSMutableArray *)array;
{
    NSInteger count = array.count;
    [self heapifyArrayWithSize:count withArray:array];
    NSInteger end = count - 1;
    while (end > 0) {
        [array exchangeObjectAtIndex:end withObjectAtIndex:0];
        [self siftDownArrayWithStart:0 end:end - 1 withArray:array];

        end--;
    }
    return array;
    
}
- (void)heapifyArrayWithSize:(NSInteger)size withArray:(NSMutableArray *)array
{
    NSInteger start = (size - 2) / 2;
    while (start >= 0) {
        [self siftDownArrayWithStart:start end:size - 1 withArray:array];

        start--;
    }
}
// 堆的定义：满足 Ki <= K2i+1 Ki<=K2i+2 为小顶堆，满足 Ki >= K2i+1 Ki>=K2i+2 为大顶堆

- (void)siftDownArrayWithStart:(NSInteger)startIndex end:(NSInteger)endIndex withArray:(NSMutableArray *)array
{
    NSInteger root = startIndex;

    while ((root * 2 + 1) <= endIndex) {
        NSInteger child = root * 2 + 1;

        if (child + 1 <= endIndex && [array[child] floatValue] < [array[child + 1] floatValue]) {
            child++;
        }

        if ([array[root] floatValue] < [array[child] floatValue]) {
            [array exchangeObjectAtIndex:root withObjectAtIndex:child];
            root = child;
        }
        else {
            return;
        }
    }
}



#pragma mark - 小顶堆
//- (NSMutableArray *)minHeapSort:(NSMutableArray *)array
//{
//    
//}
@end
