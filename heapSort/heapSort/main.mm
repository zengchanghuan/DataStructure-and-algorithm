//
//  main.m
//  heapSort
//
//  Created by zengchanghuan on 2021/5/11.
//

#import <Foundation/Foundation.h>
#import "HeapSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        HeapSort *hs = [[HeapSort alloc] init];
        NSArray *array = @[@2, @45, @8, @1, @27, @16, @5.3, @-53.7];

        NSMutableArray *resultArray =  [hs maxHeapSort:[array mutableCopy]];
        NSLog(@"resultArray = %@",resultArray);
    }
    return 0;
}
