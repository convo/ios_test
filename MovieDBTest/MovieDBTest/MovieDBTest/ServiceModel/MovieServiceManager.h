//
//  MovieServiceManager.h
//  MovieDBTest
//
//  Created by Sagar Tilekar on 09/09/19.
//  Copyright © 2019 Sagar Tilekar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPSessionManager.h"
NS_ASSUME_NONNULL_BEGIN

@interface MovieServiceManager : NSObject
+(MovieServiceManager *)sharedMovieServiceManager;
-(void)fetchMovieListsWithCompletionBlock:(void (^)(NSDictionary *jsonResponse))completion;
-(void)fetchPostImageFromUrl:(NSURL *)url withCompletionBlock:(void(^)(UIImage *posterImage))completion;
@end

NS_ASSUME_NONNULL_END
