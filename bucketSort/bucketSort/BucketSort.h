//
//  BucketSort.h
//  bucketSort
//
//  Created by zengchanghuan on 2021/5/15.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
/**
 1) 基数排序（radix sort）属于“分配式排序”（distribution sort），又称“桶子法”（bucket sort）或 bin sort，顾 名思义，它是通过键值的各个位的值，将要排序的元素分配至某些“桶”中，达到排序的作用
 2) 基数排序法是属于稳定性的排序，基数排序法的是效率高的稳定性排序法
 3) 基数排序(Radix Sort)是桶排序的扩展
 4)基数排序是1887年赫尔曼·何乐礼发明的。它是这样实现的：将整数按位数切割成不同的数字，然后按每个 位数分别比较。
 
 
说明：
 1) 基数排序是对传统桶排序的扩展，速度很快.
 2) 基数排序是经典的空间换时间的方式，占用内存很大, 当对海量数据排序时，容易造成 OutOfMemoryError 。
 3) 基数排序时稳定的。[注:假定在待排序的记录序列中，存在多个具有相同的关键字的记录，若经过排序，这些 记录的相对次序保持不变，即在原序列中，r[i]=r[j]，且r[i]在r[j]之前，而在排序后的序列中，r[i]仍在 r[j]之前， 则称这种排序算法是稳定的；否则称为不稳定的]
 4) 有负数的数组，我们不用基数排序来进行排序。
 */
@interface BucketSort : NSObject

- (NSMutableArray *)radixSortForBase:(NSInteger)base withArray:(NSMutableArray *)array;


@end

NS_ASSUME_NONNULL_END
