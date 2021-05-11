//
//  BinaryTree.m
//  BinaryTreeForOC
//
//  Created by zengchanghuan on 2021/5/11.
//

#import "BinaryTree.h"

@implementation BinaryTree
- (Node *)insertNode:(Node *)node withData:(int)value
{
    if (node == NULL)
    {
        Node *newNode = [[Node alloc] initWithValue:value];
        return newNode;
    }
    else
    {
        if (value <= node.num)
        {
            node.left = [self insertNode:node.left withData:value];
        }
        else
        {
            node.right = [self insertNode:node.right withData:value];
        }
        return node;
    }
}
- (Node *)createBinaryTree:(NSArray *)binaryTreeRawData andRoot:(Node *)root
{
    root.num = [[binaryTreeRawData objectAtIndex:0] intValue];
    int i = 1;
    while (i < (int)[binaryTreeRawData count]) {
        root = [self insertNode:root withData:[[binaryTreeRawData objectAtIndex:i] intValue]];
        i++;
    }
    return root;
}
- (void)printBinaryTree:(Node *)node
{
    if (node == NULL)
    {
        return;
    }
    [self printBinaryTree:node.left];
    NSLog(@"number = %d",node.num);
    [self printBinaryTree:node.right];
}
- (int)find:(int)value atLevel:(int)level onTree:(Node *)tree
{
    int levelValue = level;
    if (tree == NULL)
    {
        return -1;
    }
    else
    {
        if (value == tree.num)
        {
            return levelValue;
        }
        else
        {
            if (value < tree.num) {
                levelValue = [self find:value atLevel:++level onTree:tree.left];
            } else {
                levelValue = [self find:value atLevel:++level onTree:tree.right];
            }
        }
    }
    return levelValue;
}
@end
