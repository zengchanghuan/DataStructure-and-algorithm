//
//  main.m
//  QuickSortForOC
//
//  Created by zengchanghuan on 2021/5/11.
//

#import <Foundation/Foundation.h>
#import "QuickSort.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *quickSortData = @[@4, @3, @10, @44, @6, @4, @1, @7];
        QuickSort *qs = [[QuickSort alloc] init];
        NSArray *sortedNumbers = [qs quickSortArray:quickSortData];
        NSLog(@"Sorted Numbers %@", sortedNumbers);
    }
    return 0;
}
