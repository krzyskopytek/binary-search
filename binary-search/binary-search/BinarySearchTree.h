//
//  BinarySearchTree.h
//  binary-search
//
//  Created by Krzysztof Kopytek on 2016-05-03.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinaryTreeNode.h"

@interface BinarySearchTree: NSObject

@property (nonatomic,strong) NSNumber *root;

-(instancetype)initWithObject:(NSNumber*)object;
-(void)insertObject:(BinaryTreeNode *)newObject;
-(BinaryTreeNode*)find:(NSObject*)object;
-(BinaryTreeNode*)deleteObject:(NSObject*)object;

@end
