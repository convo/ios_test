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
    self.movieList = [[NSMutableArray alloc] initWithCapacity:0];
    return self;
}

- (void)getMovieList {
    [[MovieServiceManager sharedMovieServiceManager] fetchMovieListsWithCompletionBlock:^(NSDictionary * _Nonnull jsonResponse) {
        NSDictionary *responseDictionary = jsonResponse;
        [self movieList:responseDictionary];
    }];
}

- (void)movieList:(NSDictionary *)responseDictionary {
    for (int i = 0; i<[[responseDictionary objectForKey:@"results"] count]; i++) {
        MovieDescriptionModel *movie = [[MovieDescriptionModel alloc] initWithDictionary:[responseDictionary objectForKey:@"results"][i]];
        [self.movieList addObject:movie];
    }
    [_movieViewdelegate updateView:self.movieList];
}
@end
