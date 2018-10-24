//
//  NSObject+HZSafetyOperation.h
//  HZSafetyOpeation
//
//  Created by o888 on 2018/10/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (HZSafetyOperation)
- (void)hz_safeUpdateBlock:(void (^)(void))updateBlock;

- (void)hz_safeReadBlock:(void (^)(void))readBlock;

@end

NS_ASSUME_NONNULL_END
