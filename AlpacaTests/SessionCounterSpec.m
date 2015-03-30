//
//  SessionCounterSpec.m
//  Alpaca
//
//  Created by tanabe yuki on 2015/03/29.
//  Copyright (c) 2015年 example. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Kiwi.h"
#import "SessionCounter.h"

SPEC_BEGIN(SessionCounterSpec)

describe(@"SessionCounter のテスト", ^{
    
    beforeAll(^{
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:kSessionCount];
        [[NSUserDefaults standardUserDefaults] synchronize];
    });
    
    context(@"初期状態", ^{
        it(@"isFirstSession は NO が返る", ^{
            BOOL sessionCount = [SessionCounter isFirstSession];
            [[theValue(sessionCount) should] equal:theValue(NO)];
        });
    });
    
    context(@"1回目のセッション", ^{
        beforeAll(^{
            [SessionCounter countUp];
        });
        it(@"isFirstSession は YES が返る", ^{
            BOOL sessionCount = [SessionCounter isFirstSession];
            [[theValue(sessionCount) should] equal:theValue(YES)];
        });
    });
    
    context(@"2回目のセッション", ^{
        beforeAll(^{
            [SessionCounter countUp];
        });
        it(@"isFirstSession は NO が返る", ^{
            BOOL sessionCount = [SessionCounter isFirstSession];
            [[theValue(sessionCount) should] equal:theValue(NO)];
        });
    });
    
    context(@"3回目のセッション", ^{
        beforeAll(^{
            [SessionCounter countUp];
        });
        it(@"isFirstSession は NO が返る", ^{
            BOOL sessionCount = [SessionCounter isFirstSession];
            [[theValue(sessionCount) should] equal:theValue(NO)];
        });
    });
    
    afterAll(^{
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:kSessionCount];
        [[NSUserDefaults standardUserDefaults] synchronize];
    });
});

SPEC_END
