//
//  SelectionSort.m
//  SelectionSort
//
//  Created by zengchanghuan on 2021/5/11.
//

#import "SelectionSort.h"

@implementation SelectionSort
-(NSArray *)selectionSort:(NSArray <NSString *>*)originalArray{
    
    NSMutableArray *marray = [NSMutableArray arrayWithArray:originalArray];
    /**
     选择排序思想
     拿第一个数 和 后面所有的数对比，谁小就在第一位
     */

    /**
     --- (3) (4)  1   2   3;  3 < 4;  结果  3 4 1 2 3
     
     --- (3)  4  (1)  2   3;  3 > 1;  结果  1 4 3 2 3
     
     --- (1)  4   3  (2)  3   1 < 2;  结果  1  4   3  2  3
     
     --- (1)  4   3  2  (3)   1 < 3;  结果  1  4   3  2  3
     
     循环结束，第一位是最小的，比后面的都小，虽然后面的排序不对

     */
    
    for (int i = 0; i < marray.count - 1; i++) {//i最大位数倒数第二位
        for (int j = i + 1; j < marray.count; j++) {
            NSInteger frontNumber = [(NSString *)marray[i] integerValue];
            NSInteger backNumber = [(NSString *)marray[j] integerValue];
            if (frontNumber > backNumber) {
                [marray exchangeObjectAtIndex:i withObjectAtIndex:j];
            }
        }
    }
    return marray;
};
@end
