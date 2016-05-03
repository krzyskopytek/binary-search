//
//  main.m
//  binary-search
//
//  Created by Krzysztof Kopytek on 2016-05-03.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        NSMutableArray *testArray=[[NSMutableArray alloc] init];
        for (int i=0; i<1000000; i++) {
            [testArray addObject:[NSNumber numberWithInt:i]];
        }
        
        
        NSDate *methodStart = [NSDate date];
        
        //search
        for (int i=0; i<1000000; i++) {
                   if([testArray[i] isEqual:@"something"]) break;
               }
               
        
        NSDate *methodFinish = [NSDate date];
        NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate:methodStart];
        NSLog(@"executionTime = %f", executionTime);
        
        
    }
    return 0;
}
