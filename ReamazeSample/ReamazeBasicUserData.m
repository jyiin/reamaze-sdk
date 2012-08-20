//
//  ReamazeBasicUserData.m
//  ReamazeSample
//
//  Created by Jason Yiin on 8/6/12.
//  Copyright (c) 2012 Reamaze. All rights reserved.
//

#import "ReamazeBasicUserData.h"

@implementation ReamazeBasicUserData

@synthesize identifier = _identifier;

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
    
    [super dealloc];
}

- (NSDictionary *)dictionaryRepresentation
{
    NSAssert(_identifier.length > 0, @"user id is required");
    NSMutableDictionary *userDictionary = [NSMutableDictionary dictionaryWithObject:_identifier forKey:@"id"];
    return [NSMutableDictionary dictionaryWithObject:userDictionary forKey:kUserKey];
}

@end
