//
//  ShellSort.m
//  ShellSortForOC
//
//  Created by zengchanghuan on 2021/5/11.
//

#import "ShellSort.h"

@implementation ShellSort
- (nullable NSArray<NSNumber *> *)shellSort:(nonnull NSArray<NSNumber *> *)arrNumbers {
    
    NSMutableArray<NSNumber *> *arrMNumbers = [arrNumbers mutableCopy];
    for ( NSInteger increament = arrMNumbers.count / 2; increament > 0; increament /= 2 ) {
        
        for ( NSInteger i = increament; i < arrMNumbers.count; ++i ) {
            
            for ( NSInteger j = i; j - increament >= 0; j -= increament  ) {
                
                if ( arrMNumbers[j].integerValue < arrMNumbers[j - increament].integerValue ) {
                     
                    NSNumber *tempNumber = arrMNumbers[j - increament];
                    arrMNumbers[j - increament] = arrMNumbers[j];
                    arrMNumbers[j] = tempNumber;
                }
            }
        }
    }
    
    return [arrMNumbers copy];
}
@end
