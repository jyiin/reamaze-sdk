//
//  ReamazeSettings.m
//  sdk
//
//  Created by Jason Yiin on 7/30/12.
//  Copyright (c) 2012 Reamaze. All rights reserved.
//

#import "ReamazeSettings.h"

static NSString *_accountID = nil;
static NSString *_apiKey = nil;

@implementation ReamazeSettings

+ (void)configure:(NSString *)accountID with:(NSString *)apiKey
{
    if (accountID != _accountID) {
        [_accountID release];
        _accountID = [accountID retain];
    }
    if (apiKey != _apiKey) {
        [_apiKey release];
        _apiKey = [apiKey retain];
    }
}

+ (void)endSession
{
    [ReamazeSettings configure:nil with:nil];
}

+ (NSString *)accountID
{
    return _accountID;
}

+ (NSString *)apiKey
{
    return _apiKey;
}

@end
