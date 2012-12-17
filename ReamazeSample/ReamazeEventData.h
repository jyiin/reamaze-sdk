//
//  ReamazeEventData.h
//  ReamazeSample
//
//  Created by Jason Yiin on 8/14/12.
//  Copyright (c) 2012 Reamaze. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ReamazeEventData : NSObject

@property (nonatomic, retain) NSString *identifier;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *value;

- (NSMutableDictionary *)dictionaryRepresentation;
@end
