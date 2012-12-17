//
//  ReamazeUserData.m
//  ReamazeSample
//
//  Created by Jason Yiin on 8/6/12.
//  Copyright (c) 2012 Reamaze. All rights reserved.
//

#import "ReamazeUserData.h"

@implementation ReamazeUserData

@synthesize identifier = _identifier;
@synthesize email = _email;
@synthesize facebook = _facebook;
@synthesize twitter = _twitter;
@synthesize name = _name;
@synthesize sms = _sms;
@synthesize avatar = _avatar;
@synthesize data = _data;

- (id)initWithID:(NSString *)identifier
{
    if (self = [super init]) {
        self.identifier = identifier;
    }
    return self;
}

- (void)dealloc
{
    [_identifier release];
    [_email release];
    [_facebook release];
    [_twitter release];
    [_name release];
    [_sms release];
    [_avatar release];
    [_data release];
    
    [super dealloc];
}

- (void)insertObject:(NSString *)value forKey:(NSString *)key in:(NSMutableDictionary *)dictionary
{
    if (value && value.length > 0) {
        [dictionary setObject:value forKey:key];
    }
}

- (NSMutableDictionary *)dictionaryRepresentation
{
    NSAssert(_identifier.length > 0, @"user id is required");
    NSMutableDictionary *userDictionary = [NSMutableDictionary dictionaryWithObject:_identifier forKey:@"id"];
 
    [self insertObject:_email forKey:@"email" in:userDictionary];
    [self insertObject:_facebook forKey:@"facebook" in:userDictionary];
    [self insertObject:_twitter forKey:@"twitter" in:userDictionary];
    [self insertObject:_name forKey:@"name" in:userDictionary];
    [self insertObject:_sms forKey:@"sms" in:userDictionary];
    [self insertObject:_avatar forKey:@"avatar" in:userDictionary];
    
    if (_data && [_data count]) {
        [userDictionary setObject:_data forKey:@"data"];
    }
    return [NSMutableDictionary dictionaryWithObject:userDictionary forKey:kUserKey];
}

@end
