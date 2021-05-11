//
//  main.m
//  BinaryTreeForOC
//
//  Created by zengchanghuan on 2021/5/11.
//

#import <Foundation/Foundation.h>
#import "BinaryTree.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *binaryTreeRawData = @[@5, @6, @17, @1, @15, @32, @3, @8, @91];

        Node *root = [[Node alloc] init];
        BinaryTree *tree = [[BinaryTree alloc] init];
        root = [tree createBinaryTree:binaryTreeRawData andRoot:root];
        [tree printBinaryTree:root];
        
        int level = [tree find:15 atLevel:0 onTree:root];
        NSString *message = @"Numeric value not found in Binary Tree";
        
        if (level != -1)
        {
            message = [NSString stringWithFormat:@"Number value found at level %d",level];
        }
        NSLog(@"%@",message);
    }
    return 0;
}
