//
//  UsersConnection.h
//  sdk
//
//  Created by Jason Yiin on 8/4/12.
//  Copyright (c) 2012 Reamaze. All rights reserved.
//

#import "ReamazeConnection.h"

@class ReamazeUserData;

@interface UsersConnection : ReamazeConnection

- (void)sendRequest:(ReamazeUserData *)user;

@end
