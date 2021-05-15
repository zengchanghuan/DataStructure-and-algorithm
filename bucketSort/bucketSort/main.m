//
//  main.m
//  bucketSort
//
//  Created by zengchanghuan on 2021/5/15.
//

#import <Foundation/Foundation.h>
#import "BucketSort.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *array = @[@2, @45, @8, @1, @27, @16, @5.3, @53.7];
//        NSArray *array = @[@160, @210, @997, @1222, @1334, @3411, @1];
      
        BucketSort *bs = [[BucketSort alloc] init];
        NSMutableArray *sortedArray = [bs radixSortForBase:10 withArray:[array mutableCopy]];
        NSLog(@"sortedArray = %@",sortedArray);
    }
    return 0;
}
