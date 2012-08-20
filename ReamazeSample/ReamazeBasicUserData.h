//
//  ReamazeBasicUserData.h
//  ReamazeSample
//
//  Created by Jason Yiin on 8/6/12.
//  Copyright (c) 2012 Reamaze. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kUserKey @"user"

@interface ReamazeBasicUserData : NSObject
{
    NSString *_identifier;    
}

@property (nonatomic, retain) NSString *identifier;

// all ReamazeBasicUserData instances should be populated with an id / identifier
- (id)initWithID:(NSString *)identifier;
- (NSDictionary *)dictionaryRepresentation;

@end
