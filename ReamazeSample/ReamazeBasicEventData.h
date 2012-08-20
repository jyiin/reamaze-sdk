//
//  ReamazeBasicEventData.h
//  ReamazeSample
//
//  Created by Jason Yiin on 8/6/12.
//  Copyright (c) 2012 Reamaze. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kEventKey @"event"

@interface ReamazeBasicEventData : NSObject
{
    NSString *_name;
    NSNumber *_value;
}

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSNumber *value;

- (id)initWithName:(NSString *)name;

@end
