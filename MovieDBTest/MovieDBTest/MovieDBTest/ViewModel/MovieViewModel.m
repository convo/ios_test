//
//  MovieViewModel.m
//  MovieDBTest
//
//  Created by Sagar Tilekar on 09/09/19.
//  Copyright © 2019 Sagar Tilekar. All rights reserved.
//

#import "MovieViewModel.h"
#import "MovieServiceManager.h"
#import "MovieDescriptionModel.h"
@interface MovieViewModel()

@end

@implementation MovieViewModel

- (instancetype)init {
    self = [super init];
    return self;
}

- (void)getMovieList {
    [[MovieServiceManager sharedMovieServiceManager] fetchMovieListsWithCompletionBlock:^(NSDictionary * _Nonnull jsonResponse) {
        NSDictionary *responseDictionary = jsonResponse;
        [self movieList:responseDictionary];
    }];
}

- (void)movieList:(NSDictionary *)responseDictionary {
    MovieDescriptionModel *movie = [[MovieDescriptionModel alloc] initWithDictionary:responseDictionary];
}
@end
