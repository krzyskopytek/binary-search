//
//  BinarySearchTree.m
//  binary-search
//
//  Created by Krzysztof Kopytek on 2016-05-03.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinarySearchTree.h"

@implementation BinarySearchTree

-(instancetype)initWithObject:(BinaryTreeNode*)object{
    self = [super init];
    if (self) {
        _root = object;
    }
    return self;
}

-(void)insertObject:(BinaryTreeNode *)newNode{
    
    if (newNode.object > self.root){
        if(self.rightChild != nil)
            [self.rightChild insert:node];
        else
            self.rightChild = newObject;
    }
    else if newNode.object < self.root){
        if(self.left != nil)
            [self.left insert:node];
        else
            self.left = newObject;
    }


}

-(BinaryTreeNode*)find:(NSObject*)object{
    
    BinaryTreeNode *someNode = [[BinaryTreeNode alloc]init];
    return someNode;
}

-(BinaryTreeNode*)deleteObject:(NSObject*)object{

    BinaryTreeNode *someNode = [[BinaryTreeNode alloc]init];
    return someNode;
}


@end