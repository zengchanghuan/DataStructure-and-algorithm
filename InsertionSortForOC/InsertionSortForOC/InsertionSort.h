//
//  InsertionSort.h
//  InsertionSortForOC
//
//  Created by zengchanghuan on 2021/5/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InsertionSort : NSObject
- (NSArray *) mutableArrayInsertionSort: (NSArray *)unsortedArray;
- (void) constantArrayInsertionSort;
@end

NS_ASSUME_NONNULL_END
