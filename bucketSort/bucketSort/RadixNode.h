//
//  RadixNode.h
//  bucketSort
//
//  Created by zengchanghuan on 2021/5/15.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RadixNode : NSObject
@property (nonatomic, assign) int data;
@property (nonatomic, strong) RadixNode *next;
@end

NS_ASSUME_NONNULL_END
