//
//  HeapSort.h
//  heapSort
//
//  Created by zengchanghuan on 2021/5/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 堆排序是对简单选择排序的一种改进，改进后的效果非常明显。选择排序的时间复杂度是n²，堆排序是nlog₂n。
 堆排序总的来说分为两个步骤：

 1构造大顶堆。从下往上、从右到左，把每个非终结点（即叶子结点）当作根结点，将其和其子树调整成大顶堆。
 2对大顶堆进行排序。这一步骤和优先队列的出列操作是非常相似的，都是不断地把大顶堆根结点交换到末尾位置，然后剪掉，再把这样剪枝后的树重新调整成大顶堆以找出下一个最大值，放在根结点，继续进行新一轮剪枝。 这是一个不断选择最大值，依次排列起来的过程。

 堆的定义：满足 Ki <= K2i+1 Ki<=K2i+2 为小顶堆，满足 Ki >= K2i+1 Ki>=K2i+2 为大顶堆
 此为大顶堆的代码实例，小顶堆类似
 */
@interface HeapSort : NSObject

//升序----使用大顶堆
- (NSMutableArray *)maxHeapSort:(NSMutableArray *)array;

//降序----使用小顶堆
- (NSMutableArray *)minHeapSort:(NSMutableArray *)array;

@end

NS_ASSUME_NONNULL_END
