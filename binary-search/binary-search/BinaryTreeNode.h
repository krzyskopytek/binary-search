//
//  BinaryTreeNode.h
//  binary-search
//
//  Created by Krzysztof Kopytek on 2016-05-03.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinaryTreeNode: NSObject

@property (nonatomic,strong) NSNumber *object;
@property (nonatomic,strong) BinaryTreeNode *leftChild;
@property (nonatomic,strong) BinaryTreeNode *rightChild;
@property (nonatomic,strong) BinaryTreeNode *parent;

- (BOOL)isLeftChildOfParent;

@end
