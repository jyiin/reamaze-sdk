//
//  ReamazeBasicEventData.m
//  ReamazeSample
//
//  Created by Jason Yiin on 8/6/12.
//  Copyright (c) 2012 Reamaze. All rights reserved.
//

#import "ReamazeBasicEventData.h"

@implementation ReamazeBasicEventData

@synthesize name = _name;
@synthesize value = _value;

- (id)initWithName:(NSString *)name
{
    if (self = [super init]) {
        self.name = _name;
    }
    return  self;
}

@end
