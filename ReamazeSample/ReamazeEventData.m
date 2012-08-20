//
//  ReamazeEventData.m
//  ReamazeSample
//
//  Created by Jason Yiin on 8/14/12.
//  Copyright (c) 2012 Reamaze. All rights reserved.
//

#import "ReamazeEventData.h"
#import "ReamazeBasicUserData.h"

@implementation ReamazeEventData
{
    ReamazeBasicUserData *_user;
    NSString *_name;
    NSString *_value;
}

@synthesize name = _name;
@synthesize value = _value;

- (id)init
{
    if (self = [super init]) {
        _user = [[ReamazeBasicUserData alloc] init];
    }
    return self;
}

- (void)dealloc
{
    [_user release];
    [_name release];
    [_value release];
    
    [super dealloc];
}

- (void)setIdentifier:(NSString *)identifier
{
    _user.identifier = identifier;
}

- (NSString *)identifier
{
    return _user.identifier;
}

- (NSDictionary *)dictionaryRepresentation
{
    NSAssert(_name.length > 0, @"event name is required");
    NSMutableDictionary *dictionary = (NSMutableDictionary *)[_user dictionaryRepresentation];
    
    NSMutableDictionary *eventDictionary = [NSMutableDictionary dictionaryWithObject:_name forKey:@"name"];
    if (_value.length > 0) {
        [eventDictionary setObject:_value forKey:@"value"];
    }
    
    [dictionary setObject:eventDictionary forKey:@"event"];
    
    return dictionary;
}

@end
