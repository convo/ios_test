//
//  MovieDescriptionModel.m
//  MovieDBTest
//
//  Created by Sagar Tilekar on 09/09/19.
//  Copyright © 2019 Sagar Tilekar. All rights reserved.
//

#import "MovieDescriptionModel.h"

@implementation MovieDescriptionModel

- (id)initWithDictionary:(NSDictionary *)responseDictionary {
    self = [super init];
    if (self) {
        self.movieTitle = @"";
        self.movieDescription = @"";
        self.posterImageUrl = @"";
    }
    return self;
}
@end
