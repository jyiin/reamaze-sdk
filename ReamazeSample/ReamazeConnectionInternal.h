//
//  ReamazeConnectionInternal.h
//  ReamazeSample
//
//  Created by Jason Yiin on 8/14/12.
//  Copyright (c) 2012 Reamaze. All rights reserved.
//

// this is intended to be included by subclasses of ReamazeConnection
@interface ReamazeConnection (Internal)

- (void)_sendRequest: (NSDictionary *)parameters;

@end