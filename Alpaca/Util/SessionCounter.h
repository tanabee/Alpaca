//
//  SessionCounter.h
//  Alpaca
//
//  Created by tanabe yuki on 2015/03/29.
//  Copyright (c) 2015年 example. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kSessionCount @"SESSION_COUNT"

@interface SessionCounter : NSObject

+ (void)countUp;
+ (BOOL)isFirstSession;

@end
