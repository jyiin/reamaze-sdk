//
//  EventsConnection.h
//  ReamazeSample
//
//  Created by Jason Yiin on 8/6/12.
//  Copyright (c) 2012 Reamaze. All rights reserved.
//

#import "ReamazeConnection.h"

@class ReamazeEventData;

@interface EventsConnection : ReamazeConnection

- (void)sendRequest:(ReamazeEventData *)user;

@end
