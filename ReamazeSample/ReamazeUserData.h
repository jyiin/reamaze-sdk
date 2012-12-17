//
//  ReamazeUserData.h
//  ReamazeSample
//
//  Created by Jason Yiin on 8/6/12.
//  Copyright (c) 2012 Reamaze. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kUserKey @"user"

@interface ReamazeUserData : NSObject
{
    NSString *_identifier;    
    NSString *_email;
    NSString *_facebook;
    NSString *_twitter;
    NSString *_name;
    NSString *_sms;
    NSString *_avatar;
    NSDictionary *_data;
}

// an identifier is required, all other properties are optional
@property (nonatomic, retain) NSString *identifier;
@property (nonatomic, retain) NSString *email;
@property (nonatomic, retain) NSString *facebook;
@property (nonatomic, retain) NSString *twitter;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *sms;
@property (nonatomic, retain) NSString *avatar;
@property (nonatomic, retain) NSDictionary *data;

// all ReamazeUserData instances should be populated with an id / identifier
- (id)initWithID:(NSString *)identifier;
- (NSMutableDictionary *)dictionaryRepresentation;

@end
