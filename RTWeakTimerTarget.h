//
//  RTWeakTimerTarget.h
//  Kirill Kunst
//
//  Created by Kirill Kunst on 08.10.15.
//  Copyright © 2015 Kirill Kunst. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RTWeakTimerTarget : NSObject

- (instancetype)initWithTarget:(id)target selector:(SEL)selector;

- (void)timerDidFire:(NSTimer *)timer;

@end
