//
//  EventsConnection.m
//  ReamazeSample
//
//  Created by Jason Yiin on 8/6/12.
//  Copyright (c) 2012 Reamaze. All rights reserved.
//

#import "EventsConnection.h"
#import "ReamazeConnectionInternal.h"
#import "ReamazeEventData.h"

@implementation EventsConnection

- (NSString *) path
{
    return @"/data/events.json";
}

- (void)sendRequest:(ReamazeEventData *)event
{
    [self _sendRequest:[event dictionaryRepresentation]];
}

@end
