//
//  UsersConnection.m
//  sdk
//
//  Created by Jason Yiin on 8/4/12.
//  Copyright (c) 2012 Reamaze. All rights reserved.
//

#import "UsersConnection.h"
#import "ReamazeUserData.h"
#import "ReamazeConnectionInternal.h"

@implementation UsersConnection

- (NSString *) path
{
    return @"/data/users.json";
}

- (void)sendRequest:(ReamazeUserData *)user
{
    [self _sendRequest:[user dictionaryRepresentation]];
}


@end
