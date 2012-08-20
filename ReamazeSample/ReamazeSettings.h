//
//  ReamazeSettings.h
//  sdk
//
//  Created by Jason Yiin on 7/30/12.
//  Copyright (c) 2012 Reamaze. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ReamazeSettings : NSObject

+ (void)configure:(NSString *)accountID with:(NSString *)apiKey;
+ (void)endSession;
+ (NSString *)accountID;
+ (NSString *)apiKey;

@end
