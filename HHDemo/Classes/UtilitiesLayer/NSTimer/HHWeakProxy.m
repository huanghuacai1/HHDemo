//
//  HHWeakProxy.m
//  HHDemo
//
//  Created by wanhong cai on 2019/8/16.
//  Copyright © 2019 huanghuacai. All rights reserved.
//

#import "HHWeakProxy.h"

@interface HHWeakProxy ()
@property (nonatomic, weak) id target;
@end

@implementation HHWeakProxy

+ (instancetype)proxyWithTarget:(id)target{
    HHWeakProxy *proxy = [HHWeakProxy alloc];
    proxy.target = target;
    return proxy;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel{
    return [self.target methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation{
    SEL sel = invocation.selector;
    if ([self.target respondsToSelector:sel]) {
        [invocation invokeWithTarget:self.target];
    }
}

@end
