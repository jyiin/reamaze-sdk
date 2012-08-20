//
//  ReamazeConnection.m
//  sdk
//
//  Created by Jason Yiin on 7/30/12.
//  Copyright (c) 2012 Reamaze. All rights reserved.
//

#import "ReamazeConnection.h"
#import "ReamazeSettings.h"
#import "JSONKit.h"

@implementation ReamazeConnection

@synthesize data = _data;

- (void)dealloc
{
    [_data release];
    
    [super dealloc];
}

- (NSString *) path
{
    NSAssert(NO, @"Please override this method");
    return @"";
}

- (NSURL *) createURL
{
    return [[NSURL alloc] initWithScheme:@"https" host:[NSString stringWithFormat:@"%@.reamaze.com", [ReamazeSettings accountID]] path:self.path];
}

- (NSMutableURLRequest *)createRequest
{
    NSURL *url = [self createURL];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    [url release];
    
    // posting by default
    [request setHTTPMethod:@"POST"];

    return request;
}

- (void)_sendRequest: (NSDictionary *)parameters
{
    NSMutableURLRequest *request = [self createRequest];
    NSData *parameterData = [parameters JSONData];
    [request setHTTPBody:parameterData];
    [request setValue:@"application/json" forHTTPHeaderField:@"content-type"];
    [NSURLConnection connectionWithRequest:request delegate:self];

    [_data release];
    _data = nil;
}

- (void)connection:(NSURLConnection *)connection willSendRequestForAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge
{
    NSURLCredential *credentials = [NSURLCredential credentialWithUser:[ReamazeSettings apiKey] password:@"" persistence:NSURLCredentialPersistenceForSession];
    [challenge.sender useCredential:credentials forAuthenticationChallenge:challenge];
}


- (NSCachedURLResponse *)connection:(NSURLConnection *)connection willCacheResponse:(NSCachedURLResponse *)cachedResponse
{
    return nil;
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
#ifdef REAMAZE_LOGGING
    NSLog(@"did receive response");
#endif
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    if (_data) {
        [_data appendData:data];
    } else {
        _data = [data copy];
    }
#ifdef REAMAZE_LOGGING
    NSLog(@"did receive data");
#endif
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
#ifdef REAMAZE_LOGGING
    NSLog(@"did fail with error");
#endif
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSString *response = [[NSString alloc] initWithData:_data encoding:NSUTF8StringEncoding];
#ifdef REAMAZE_LOGGING
    NSLog(@"did finish loading, response is %@", response);
#endif
}

@end
