//
//  NSTimer+RTRetainCyclePrevent.h
//  Kirill Kunst
//
//  Created by Kirill Kunst on 08.10.15.
//  Copyright © 2015 Kirill Kunst. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (RTRetainCyclePrevent)

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)timeInterval
                                 weakTarget:(id)target
                                   selector:(SEL)selector
                                   userInfo:(id)userInfo
                                    repeats:(BOOL)repeats;

@end
