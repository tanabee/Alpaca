//
//  SessionCounter.m
//  Alpaca
//
//  Created by tanabe yuki on 2015/03/29.
//  Copyright (c) 2015年 example. All rights reserved.
//

#import "SessionCounter.h"

@implementation SessionCounter

+ (void)countUp {
    NSUserDefaults* userDefaults = [NSUserDefaults standardUserDefaults];
    if (![userDefaults objectForKey:kSessionCount]) {
        [userDefaults setObject:@(1) forKey:kSessionCount];
    } else {
        NSInteger sessionCount = [userDefaults integerForKey:kSessionCount];
        sessionCount++;
        [userDefaults setObject:@(sessionCount) forKey:kSessionCount];
    }
    [userDefaults synchronize];
}

+ (BOOL)isFirstSession {
    NSUserDefaults* userDefaults = [NSUserDefaults standardUserDefaults];
    if (![userDefaults objectForKey:kSessionCount]) {
        return NO;
    }
    return ([userDefaults integerForKey:kSessionCount] == 1);
}

@end
