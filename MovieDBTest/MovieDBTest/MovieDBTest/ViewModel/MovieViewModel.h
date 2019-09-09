//
//  MovieViewModel.h
//  MovieDBTest
//
//  Created by Sagar Tilekar on 09/09/19.
//  Copyright © 2019 Sagar Tilekar. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MovieViewDelegate <NSObject>
- (void)updateView:(NSMutableArray *)movieList;
@end

NS_ASSUME_NONNULL_BEGIN

@interface MovieViewModel : NSObject
@property (strong,nonatomic)NSMutableArray *movieList;
@property (weak,nonatomic)id<MovieViewDelegate> movieViewdelegate;
- (void)getMovieList;
@end

NS_ASSUME_NONNULL_END
