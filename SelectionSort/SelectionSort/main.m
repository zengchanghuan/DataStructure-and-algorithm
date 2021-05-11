//
//  main.m
//  SelectionSort
//
//  Created by zengchanghuan on 2021/5/11.
//

#import <Foundation/Foundation.h>
#import "SelectionSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *arrry = @[@2, @45, @8, @1, @27, @16, @5.3, @ - 53.7];
        SelectionSort *selectionSort = [[SelectionSort alloc] init];
        NSArray *resultArray = [selectionSort selectionSort:arrry];
        NSLog(@"resultArray %@",resultArray);
    }
    return 0;
}
