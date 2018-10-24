//
//  HZSafetyQueue.h
//  test
//
//  Created by o888 on 2018/10/24.
//  Copyright © 2018 o888. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HZSafetyQueue : NSObject
+ (instancetype)sharedInstance;

@property (strong, readonly) dispatch_queue_t safetyQueue;

@end

NS_ASSUME_NONNULL_END
