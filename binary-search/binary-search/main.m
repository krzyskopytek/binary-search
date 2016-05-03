//
//  main.m
//  binary-search
//
//  Created by Krzysztof Kopytek on 2016-05-03.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinarySearchTree.h"
#import "BinaryTreeNode.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        // Binary Search Part 1
        //================================================
        
        NSMutableArray *testArray=[[NSMutableArray alloc] init];
        for (int i=0; i<100; i++) {//only 100 for debuging
            [testArray addObject:[NSNumber numberWithInt:i]];
        }
        
        
        NSDate *methodStart = [NSDate date];
        
        //search
        for (int i=0; i<100; i++) {//only 100 for debuging
                   if([testArray[i] isEqual:@"something"]) break;
               }
               
        
        NSDate *methodFinish = [NSDate date];
        NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate:methodStart];
        NSLog(@"executionTime = %f", executionTime);
        
        
        // Binary Search Part 2 (Stretch)
        //================================================
        // using testArray from part 1
        
        for (int i = 0; i < testArray.count; i++) {
            int randomInt1 = arc4random() % [testArray count];
            int randomInt2 = arc4random() % [testArray count];
            [testArray exchangeObjectAtIndex:randomInt1 withObjectAtIndex:randomInt2];
        }
        
        //printing array - just testing
        for (NSNumber *number in testArray) {
            NSLog(@"%@", number);
        }
        
        BinaryTreeNode *node = [[BinaryTreeNode alloc]init];
        node.object = testArray[0];
        
        BinarySearchTree *tree = [[BinarySearchTree alloc]initWithObject:node];
        
        //tree creation
        for (int i = 0; i < testArray.count; i++) {
            
            node.object = testArray[i];
            [tree insertObject:node];
            
        }
        
        
        
    }
    return 0;
}
