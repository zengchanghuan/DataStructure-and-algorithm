//
//  Node.m
//  BinaryTreeForOC
//
//  Created by zengchanghuan on 2021/5/11.
//

#import "Node.h"

@implementation Node
- (id)initWithValue:(int)value
{
    self = [super init];
    if (self) {
        self.num = value;
        self.left = NULL;
        self.right = NULL;
    }
    return self;
}
@end
