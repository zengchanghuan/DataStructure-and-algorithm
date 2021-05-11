//
//  Node.h
//  BinaryTreeForOC
//
//  Created by zengchanghuan on 2021/5/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Node : NSObject
@property (nonatomic, assign) int num;
@property (nonatomic, strong, nullable) Node *left;
@property (nonatomic, strong, nullable) Node *right;
- (id)initWithValue:(int)value;
@end

NS_ASSUME_NONNULL_END
