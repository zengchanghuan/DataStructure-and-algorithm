//
//  BinaryTree.h
//  BinaryTreeForOC
//
//  Created by zengchanghuan on 2021/5/11.
//

#import <Foundation/Foundation.h>
#import "Node.h"

NS_ASSUME_NONNULL_BEGIN

@interface BinaryTree : NSObject

- (Node *)insertNode:(Node *)node withData:(int)value;
- (Node *)createBinaryTree:(NSArray *)binaryTreeRawData andRoot:(Node *)root;
- (void)printBinaryTree:(Node *)node;
- (int)find:(int)value atLevel:(int)level onTree:(Node *)tree;
@end

NS_ASSUME_NONNULL_END
