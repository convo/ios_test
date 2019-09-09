//
//  MovieServiceManager.m
//  MovieDBTest
//
//  Created by Sagar Tilekar on 09/09/19.
//  Copyright © 2019 Sagar Tilekar. All rights reserved.
//

#import "MovieServiceManager.h"
#import <AFNetworking/AFImageDownloader.h>

@implementation MovieServiceManager
+(MovieServiceManager *)sharedMovieServiceManager {
    static MovieServiceManager *_sharedMovieServiceManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedMovieServiceManager = [[self alloc] init];
    });
    return _sharedMovieServiceManager;
}

-(instancetype)init {
    self = [super init];
    return self;
}

- (void)fetchMovieListsWithCompletionBlock:(void (^)(NSDictionary * _Nonnull))completion {
    NSURL *url = [NSURL URLWithString:@"http://api.themoviedb.org/3/discover/movie?with_cast=3896&sort_by=popularity.desc&api_key=33e0ed5431a0b6fd7d517ac61f476054"];
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    [sessionManager GET:url.absoluteString parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completion(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"Error with get response from Server = %@",error.localizedDescription);
    }];
}

- (void)fetchPostImageFromUrl:(NSURL *)url withCompletionBlock:(void (^)(UIImage * _Nonnull))completion {
    AFImageDownloader *imageDownloader = [[AFImageDownloader alloc] init];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [imageDownloader downloadImageForURLRequest:request success:^(NSURLRequest * _Nonnull request, NSHTTPURLResponse * _Nullable response, UIImage * _Nonnull responseObject) {
        completion(responseObject);
    } failure:^(NSURLRequest * _Nonnull request, NSHTTPURLResponse * _Nullable response, NSError * _Nonnull error) {
        NSLog(@"Error with get response for Image = %@",error.localizedDescription);
    }];
}
@end
