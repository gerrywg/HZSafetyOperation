//
//  NSObject+HZSafetyOperation.m
//  HZSafetyOpeation
//
//  Created by o888 on 2018/10/24.
//

#import "NSObject+HZSafetyOperation.h"
#import "HZSafetyQueue.h"

@implementation NSObject (HZSafetyOperation)
- (void)hz_safeUpdateBlock:(void (^)(void))updateBlock {
    dispatch_barrier_async([HZSafetyQueue sharedInstance].safetyQueue, ^{
        if (updateBlock) {
            updateBlock();
        }
    });
}

- (void)hz_safeReadBlock:(void (^)(void))readBlock{
    dispatch_sync([HZSafetyQueue sharedInstance].safetyQueue, ^{
        if (readBlock) {
            readBlock();
        }
    });
}

@end
