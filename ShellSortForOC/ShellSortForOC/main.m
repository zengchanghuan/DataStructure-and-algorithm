//
//  main.m
//  ShellSortForOC
//
//  Created by zengchanghuan on 2021/5/11.
//

#import <Foundation/Foundation.h>
#import "ShellSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *arrry = @[@2, @45, @8, @1, @27, @16, @5.3, @ - 53.7];
        ShellSort *shellSort = [[ShellSort alloc] init];
        NSArray *sortedArray = [shellSort shellSort:arrry];
        NSLog(@"sortedArray %@",sortedArray);
    }
    return 0;
}
