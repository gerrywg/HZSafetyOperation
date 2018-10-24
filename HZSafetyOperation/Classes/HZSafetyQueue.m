//
//  HZSafetyQueue.m
//  test
//
//  Created by o888 on 2018/10/24.
//  Copyright © 2018 o888. All rights reserved.
//

#import "HZSafetyQueue.h"

static HZSafetyQueue *sharedObj = nil;
@implementation HZSafetyQueue

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!sharedObj) {
            sharedObj = [[self alloc]init];
        }
    });
    return sharedObj;
}

- (instancetype)init {
    if (self = [super init]) {
        _safetyQueue = dispatch_queue_create("safeftyQueue", DISPATCH_QUEUE_CONCURRENT);
    }
    return self;
}

@end
