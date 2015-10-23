//
//  RTWeakTimerTarget.m
//  Kirill Kunst
//
//  Created by Kirill Kunst on 08.10.15.
//  Copyright © 2015 Kirill Kunst. All rights reserved.
//

#import "RTWeakTimerTarget.h"
#import <objc/message.h>

@interface RTWeakTimerTarget()

@property (nonatomic, weak) id target;
@property (nonatomic) SEL selector;

@end

@implementation RTWeakTimerTarget

- (instancetype)initWithTarget:(id)target selector:(SEL)selector
{
    if (self = [super init]) {
        _target = target;
        _selector = selector;
    }
    
    return self;
}

- (id)init
{
    return [self initWithTarget:nil selector:nil];
}


- (void)timerDidFire:(NSTimer *)timer
{
    if (self.target) {
        objc_msgSend(self.target, self.selector);
    } else {
        [timer invalidate];
    }
}


@end
