//
//  ReamazeConnection.h
//  sdk
//
//  Created by Jason Yiin on 7/30/12.
//  Copyright (c) 2012 Reamaze. All rights reserved.
//

#import <Foundation/Foundation.h>

#define REAMAZE_LOGGING 1

@interface ReamazeConnection : NSObject <NSURLConnectionDelegate>
{
    NSMutableData *_data;
}

@property (nonatomic, readonly) NSMutableData *data;

@end
