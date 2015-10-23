//
//  NSTimer+RTRetainCyclePrevent.m
//  Kirill Kunst
//
//  Created by Kirill Kunst on 08.10.15.
//  Copyright © 2015 Kirill Kunst. All rights reserved.
//

#import "NSTimer+RTRetainCyclePrevent.h"
#import "RTWeakTimerTarget.h"

@implementation NSTimer (RTRetainCyclePrevent)

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)timeInterval
                                 weakTarget:(id)target
                                   selector:(SEL)selector
                                   userInfo:(id)userInfo
                                    repeats:(BOOL)repeats
{
    RTWeakTimerTarget *targetProxy = [[RTWeakTimerTarget alloc] initWithTarget:target selector:selector];
    return [self scheduledTimerWithTimeInterval:timeInterval
                                         target:targetProxy
                                       selector:@selector(timerDidFire:)
                                       userInfo:userInfo repeats:repeats];
}

@end
