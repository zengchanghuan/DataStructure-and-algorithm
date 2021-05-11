//
//  main.m
//  MergesortForOC
//
//  Created by zengchanghuan on 2021/5/11.
//

#import <Foundation/Foundation.h>
#import "MergeSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *mergeSorttData = @[@4, @3, @10, @44, @6, @4, @1, @7, @15];
 
        MergeSort *ms = [[MergeSort alloc] init];
//        ms.cycles = 0;
        NSArray *mergeSortedArray = [ms mergeSortArray: mergeSorttData];
        NSLog(@"mergeSortedArray: %@", mergeSortedArray);
    }
    return 0;
}
