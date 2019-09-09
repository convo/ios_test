//
//  MovieDescriptionModel.h
//  MovieDBTest
//
//  Created by Sagar Tilekar on 09/09/19.
//  Copyright © 2019 Sagar Tilekar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MovieDescriptionModel : NSObject
@property (strong,nonatomic)NSString *movieTitle;
@property (strong,nonatomic)NSString *movieDescription;
@property (strong,nonatomic)NSString *posterImageUrl;
-(id)initWithDictionary:(NSDictionary *)responseDictionary;
@end

NS_ASSUME_NONNULL_END
