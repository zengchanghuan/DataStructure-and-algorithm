//
//  main.m
//  InsertionSortForOC
//
//  Created by zengchanghuan on 2021/5/11.
//

#import <Foundation/Foundation.h>
#import "InsertionSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        NSArray *sorttData = @[@4, @3, @10, @44, @6, @4, @1, @7, @15];
 
        InsertionSort *insertionSort = [[InsertionSort alloc] init];
        NSArray *insertionSortArray = [insertionSort mutableArrayInsertionSort:sorttData];
        NSLog(@"insertionSortArray: %@", insertionSortArray);
        
        [insertionSort constantArrayInsertionSort];
    }
    return 0;
}
